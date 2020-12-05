//
// Created by micha on 2020-09-20.
//

#include "WebCrawlerManager.h"
#include <time.h>

using namespace std;
using namespace NDegreesOfWikipedia;

WebCrawlerManager::WebCrawlerManager(string start, string end, int numThreads) : graph(start) {
    //TODO: Implement
    this->start = start;
    this->end = end;
    this->numThreads = numThreads;
}

void WebCrawlerManager::run() {
    time_t timer;
    double seconds;

    pthread_t threads[this->numThreads];

    int rc;

    bool killSig = false;

    queue.push(graph.findNode(start));

    time(&timer);
    for(int i = 0; i < this->numThreads; i++) {
        WebCrawler *c = new WebCrawler();
        ThreadData *data = new ThreadData;
        data->pwc = c;
        data->threadIdx = i;
        data->pQueue = &queue;
        data->pGraph = &graph;
        data->killSig = &killSig;
        rc = pthread_create(&threads[i], NULL, &WebCrawler::run_helper, (void *)data);
        if(rc) {
            cout << "Error unable to create thread," << rc << endl;
            exit(-1);
        }
    }

    while(!this->graph.nodeExists(this->end))
    {
        cout << "\r" << graph.size() << " pages added to the graph!" << flush;
        usleep(500000);
    }

    cout << endl;

    killSig = true;

    for(int i = 0; i < this->numThreads; i++) {
        (void) pthread_join(threads[i], NULL);
    }

    seconds = difftime(time(NULL), timer);
    cout << "Search took " << seconds << " seconds" << endl;

    stack<Node *> path = this->graph.findPathToRoot(this->graph.findNode(this->end));

    cout << "A path between pages has been found!" << endl;
    while(!path.empty()) {
        cout << path.top()->value;
        path.pop();

        if(!path.empty()) {
            cout << " -> ";
        }
    }

    pthread_exit(NULL);
}

