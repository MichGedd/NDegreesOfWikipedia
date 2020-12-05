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
    this->buffer.memory = (char *)malloc(1);
    this->buffer.size = 0;
    this->curl = curl_easy_init();
    this->rgx = regex (R"(wiki\/(?!File:).*?(?=\"))", regex_constants::optimize);

    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, callback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, (void *)&buffer);
}

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

string WebCrawler::httpAndJSONParse(string wikiPage) {
    string url = "https://en.wikipedia.org/w/api.php?action=parse&format=json&prop=text&formatversion=2&page=";
    url.append(wikiPage);

    this->buffer.memory = (char *)malloc(1);
    this->buffer.size = 0;

    curl_easy_setopt(this->curl, CURLOPT_URL, url.c_str());
    this->res = curl_easy_perform(this->curl);

    if(res != CURLE_OK) {
        cout << "Critical Error: Unable to reach Wikimedia API.  cURL failed with error code " << res << ".  Closing program";
        exit(1);
    }

    string s;
    try {
        json j;
        j = json::parse(this->buffer.memory);
        s = j["parse"]["text"];
    } catch (nlohmann::json::type_error &error) {
        s = "";
    }

    free(this->buffer.memory);
    this->buffer.size = 0;
    return s;

}

vector<string> WebCrawler::scrape(std::string html) {
    smatch m;
    vector<string> returnVector;

    if(html.empty())
    {
        return returnVector;
    }


    while(regex_search(html, m, this->rgx)) {
        for(auto x:m) {
            string articleName = x.str().substr(5);

            bool addToList = [this](const string& s, const vector<string>& vs){
                    for(const string& filter : this->wikipediaFilters) {
                        if(s.find(filter) != string::npos) {
                            return false;
                        }
                    }
                    for(const string& page : vs) {
                        if(page == s)
                            return false;
                    }
                    return true;
            }(articleName, returnVector);


            if(addToList) {
                returnVector.push_back(articleName);
            }

        }
        html = m.suffix().str();

    }

    return returnVector;
}

[[noreturn]] void *WebCrawler::run(void *threadData) {
    auto *data = (ThreadData *)threadData;
    vector<string> nodesToAdd;

    while(!*(data->killSig)) {
        queueMutex.lock();
        if(data->pQueue->empty()) {
            queueMutex.unlock();
            usleep(100000);
            continue;
        }

        Node *n = data->pQueue->front();
        data->pQueue->pop();
        queueMutex.unlock();

        nodesToAdd = scrape(httpAndJSONParse(n->value));

        for(string s : nodesToAdd) {
            graphMutex.lock();
            Node *graphNode = data->pGraph->findNode(s);
            graphMutex.unlock();

            if(graphNode == NULL) {
                Node *nodeToAdd = new Node;
                nodeToAdd->value = s;
                nodeToAdd->parentNode = n;

                graphMutex.lock();
                data->pGraph->addNode(n, nodeToAdd);
                graphMutex.unlock();

                queueMutex.lock();
                data->pQueue->push(nodeToAdd);
                queueMutex.unlock();
            } else {
                graphMutex.lock();
                data->pGraph->addNodeConnection(n, graphNode);
                graphMutex.unlock();
            }

        }
    }
    cout << "Thread " << data->threadIdx << " completed!" << endl;
    pthread_exit(NULL);
}

void *WebCrawler::run_helper(void *threadData) {
    auto *data = (ThreadData *)threadData;
    return (data->pwc)->run(threadData);
}


