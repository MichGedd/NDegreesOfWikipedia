//
// Created by micha on 2020-09-20.
//
#pragma once

#include <iostream>
#include <queue>
#include <string>
#include <pthread.h>

#include "Graph.h"
#include "WebCrawler.h"


namespace NDegreesOfWikipedia {

    struct ThreadData {
        NDegreesOfWikipedia::WebCrawler *pwc;
        NDegreesOfWikipedia::Graph *pGraph;
        std::queue<NDegreesOfWikipedia::Node *> *pQueue;
        bool *killSig;
        int threadIdx;
    };

    class WebCrawlerManager {
    public:
        WebCrawlerManager(std::string start, std::string end, int numThreads);
        void run();
    private:
        std::queue<NDegreesOfWikipedia::Node *> queue;
        NDegreesOfWikipedia::Graph graph;
        std::string start, end;
        int numThreads;
    };
}
