//
// Created by micha on 2020-09-20.
//

#include "WebCrawlerManager.h"
#include <time.h>

using namespace std;
using namespace NDegreesOfWikipedia;

/**
 * Constructor for WebCrawlerManager object
 * @param start - Wikipedia article to start at
 * @param end - Wikipedia article to end at
 * @param numThreads - Number of threads to use
 */
WebCrawlerManager::WebCrawlerManager(string start, string end, int numThreads) : graph(start) {
    this->start = start;
    this->end = end;
    this->numThreads = numThreads;
}

/**
 * Main running function of program
 */
void WebCrawlerManager::run() {
    time_t timer;  // Create timer
    double seconds;

    pthread_t threads[this->numThreads];  // Create threads

    int rc;  // Integer for error checking

    bool killSig = false;  // Kill signal for threads

    queue.push(graph.findNode(start));  // Add the initial article to the graph and add the node to the queue

    time(&timer);    // Get current time
    for(int i = 0; i < this->numThreads; i++) {
        WebCrawler *c = new WebCrawler();  // Create WebCrawler pointer
        ThreadData *data = new ThreadData;  // Create thread data pointer
        data->pwc = c;  // Set WebCrawler pointer
        data->threadIdx = i;  // Set thread index
        data->pQueue = &queue;  // Set queue pointer
        data->pGraph = &graph;  // Set graph pointer
        data->killSig = &killSig;  // Set kill signal pointer
        rc = pthread_create(&threads[i], NULL, &WebCrawler::run_helper, (void *)data);  // Create the thread

        // Kill the program id there was a problem creating a thread
        if(rc) {
            cout << "Error unable to create thread," << rc << endl;
            exit(-1);
        }
    }

    // Update UI if the ending node does not exist
    while(!this->graph.nodeExists(this->end))
    {
        cout << "\r" << graph.size() << " pages added to the graph!" << flush;
        usleep(500000);  // Sleep for 500ms
    }

    cout << endl;

    killSig = true;  // Set kill signal to true

    for(int i = 0; i < this->numThreads; i++) {
        (void) pthread_join(threads[i], NULL);  // Wait for all threads to join to main thread
    }

    seconds = difftime(time(NULL), timer);  // Get difference in starting and ending time
    cout << "Search took " << seconds << " seconds" << endl;

    stack<Node *> path = this->graph.findPathToRoot(this->graph.findNode(this->end));  // Get the path from starting to ending node

    cout << "A path between pages has been found!" << endl;
    //Write the path to console
    while(!path.empty()) {
        cout << path.top()->value;
        path.pop();

        if(!path.empty()) {
            cout << " -> ";
        }
    }

    pthread_exit(NULL);
}

