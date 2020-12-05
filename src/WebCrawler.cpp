//
// Created by micha on 2020-09-19.
//

#include "WebCrawler.h"
#include "WebCrawlerManager.h"
#include "Graph.h"

using namespace std;
using namespace NDegreesOfWikipedia;
using json = nlohmann::json;

WebCrawler::WebCrawler() {
    this->buffer.memory = (char *)malloc(1);  // Allocate memory for cURL buffer
    this->buffer.size = 0;  // Set the size of cURL buffer to 0
    this->curl = curl_easy_init();  // Initialize cURL
    this->rgx = regex (R"("\/wiki\/(?!File:).*?(?=\"))", regex_constants::optimize);  // Initialize regular expression

    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, callback);  // cURL initialization
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void *)&buffer);  // cURL initialization
}

/**
 * Function to make HTTP request using cURL.  Referenced from https://curl.se/libcurl/c/getinmemory.html
 */
size_t WebCrawler::callback(void *data, size_t size, size_t nmeb, void *userdata) {
    size_t trueSize = size * nmeb;

    struct CurlBuffer *mem = (CurlBuffer *)userdata;

    char *ptr = (char *)realloc(mem->memory, mem->size + trueSize + 1);

    if(ptr == NULL) return -1;
    mem->memory = ptr;
    memcpy(&(mem->memory[mem->size]), data, trueSize);
    mem->size += trueSize;
    mem->memory[mem->size] = 0;

    return trueSize;
}

/**
 * Function to make HTTP request and parse the JSON output
 * @param wikiPage - Wikipedia article to make API request to
 * @return - HTML code of the wikipedia page
 */
string WebCrawler::httpAndJSONParse(string wikiPage) {
    string url = "https://en.wikipedia.org/w/api.php?action=parse&format=json&prop=text&formatversion=2&page=";
    url.append(wikiPage);

    this->buffer.memory = (char *)malloc(1);  // Allocate memory for cURL buffer
    this->buffer.size = 0;  // Ser cURL buffer size

    curl_easy_setopt(this->curl, CURLOPT_URL, url.c_str());
    this->res = curl_easy_perform(this->curl);  // Make HTTP request

    if(res != CURLE_OK) {  // Check if there is a problem with the API (Program will fail if HTTP code is not 200)
        cout << "CRITICAL ERROR: Unable to reach Wikimedia API.  cURL failed with error code " << res << ".  Closing program" << endl;
        exit(1);
    }

    string s;  // String to return
    try {
        json j;  // Create JSON object
        j = json::parse(this->buffer.memory);  // Parse HTTP request
        s = j["parse"]["text"];  // Get the text at json location parse -> text
    } catch (nlohmann::json::type_error &error) {
        s = "";  // Return empty string if error
    } catch (nlohmann::json::parse_error &error) {
        s = "";  // Return empty string if error
    }

    free(this->buffer.memory);  // Free buffer memory
    this->buffer.size = 0;  // Set buffer size to 0
    return s;  // Return string

}

/**
 * Function to make sure Wikipedia articles exist.  Almost exactly the same as httpAndJSONParse but return if there is an error with the Wikipedia article
 * @param wikiPage - Wikipedia article to make API request to
 * @return - return false if the Wikipedia article does not exist, or if there is an error parsing it
 */
bool WebCrawler::webpageExists(std::string wikiPage) {
    string url = "https://en.wikipedia.org/w/api.php?action=parse&format=json&prop=text&formatversion=2&page=";
    url.append(wikiPage);

    this->buffer.memory = (char *)malloc(1);
    this->buffer.size = 0;

    curl_easy_setopt(this->curl, CURLOPT_URL, url.c_str());
    this->res = curl_easy_perform(this->curl);

    if(res != CURLE_OK) {
        cout << "WARNING: cURL failed with error code " << res << ".  Program may not work." << endl;
        return false;
    }

    string s;
    try {
        json j;
        j = json::parse(this->buffer.memory);
        s = j["parse"]["text"];
    } catch (nlohmann::json::type_error &error) {
        return false;
    } catch (nlohmann::json::parse_error &error) {
        return false;
    }

    free(this->buffer.memory);
    this->buffer.size = 0;

    return true;
}

/**
 * Function to scrape output of the HTTP request
 * @param html - html code to scrape
 * @return - list of all articles on the Wikipedia page
 */
vector<string> WebCrawler::scrape(std::string html) {
    smatch m;  // Regex matcher
    vector<string> returnVector;  // Vector to return

    if(html.empty())
    {
        return returnVector;  // Return empty vector if html is an empty string.  Normally means there is an error with the article
    }


    // This loop searches article and finds regex matches
    while(regex_search(html, m, this->rgx)) {
        for(auto x:m) {
            string articleName = x.str().substr(7);  // regex matches for "/wiki/<Article name here> so strip the "/wiki/ from the string

            // Lambda function to check if the article should be added to the return list
            bool addToList = [this](const string& s, const vector<string>& vs){
                    for(const string& filter : this->wikipediaFilters) {
                        // If the article name contains one of the Wikipedia Filters, do not add it
                        if(s.find(filter) != string::npos) {
                            return false;
                        }
                    }
                    // If the article is already in the list, don't add it
                    for(const string& page : vs) {
                        if(page == s)
                            return false;
                    }
                    return true;
            }(articleName, returnVector);


            if(addToList) {
                returnVector.push_back(articleName);  // Add the article to the list
            }

        }
        html = m.suffix().str();  // Shorten the string for regex to match against

    }

    return returnVector;
}

/**
 * Main loop of the WebCrawller
 * @param threadData -  struct that WebCrawllerManager passes to the WebCrawller.  Needed for multithreading
 * @return - Nothing
 */
[[noreturn]] void *WebCrawler::run(void *threadData) {
    auto *data = (ThreadData *)threadData;  // Parse the data struct
    vector<string> nodesToAdd;  // Create list of nodes to add to graph

    // Main loop.  Continue until a kill signal is recieved from the WebCrawllerManager
    while(!*(data->killSig)) {
        queueMutex.lock();  // Lock the queue mutex to avoid race conditions
        if(data->pQueue->empty()) {  // Check if the queue is empty
            queueMutex.unlock();  // Unlock the mutex
            usleep(100000);  // Sleep thread for 100ms
            continue;
        }

        Node *n = data->pQueue->front();  // Get the graph node from the data queue
        data->pQueue->pop();  // Remove the graph node from the data queue
        queueMutex.unlock();  // Unlock the queue mutex

        nodesToAdd = scrape(httpAndJSONParse(n->value));  // Get the articles to add to the graph

        for(string s : nodesToAdd) {
            graphMutex.lock();  // Lock the graph mutex to avoid race conditions
            Node *graphNode = data->pGraph->findNode(s);  // Check if the node exists in the graph
            graphMutex.unlock();  // Unlock the graph mutex

            if(graphNode == NULL) {  // If the node does not exist in the graph
                // Create new node with relationships
                Node *nodeToAdd = new Node;
                nodeToAdd->value = s;
                nodeToAdd->parentNode = n;

                // Add the node to the graph
                graphMutex.lock();
                data->pGraph->addNode(n, nodeToAdd);
                graphMutex.unlock();

                // Add the node to the queue
                queueMutex.lock();
                data->pQueue->push(nodeToAdd);
                queueMutex.unlock();
            } else {  // If the node does exist in the graph
                // Update graph relationships
                graphMutex.lock();
                data->pGraph->addNodeConnection(n, graphNode);
                graphMutex.unlock();
            }

        }
    }
    cout << "Thread " << data->threadIdx << " completed!" << endl;
    pthread_exit(NULL);
}

/**
 * Helper function for multithreading
 * @param threadData - struct that WebCrawllerManager passes to the WebCrawller.  Needed for multithreading
 * @return - Nothing
 */
void *WebCrawler::run_helper(void *threadData) {
    auto *data = (ThreadData *)threadData;
    return (data->pwc)->run(threadData);
}


