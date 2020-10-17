//
// Created by micha on 2020-09-19.
//

#pragma once

#include <iostream>
#include <curl/curl.h>
#include <nlohmann/json.hpp>
#include <regex>
#include <unistd.h>
#include <mutex>
#include <stack>

namespace NDegreesOfWikipedia {

    inline std::mutex queueMutex = {};
    inline std::mutex graphMutex = {};

    class WebCrawler {
    public:
        WebCrawler();

        [[noreturn]] void *run(void *threadid);
        static void *run_helper(void *threadData);
        //std::string httpAndJSONParse(std::string wikiPage);
    private:
        struct CurlBuffer {
            char *memory;
            size_t size;
        };

        static size_t callback(void *data, size_t size, size_t nmeb, void *userdata);
        std::vector<std::string> scrape(std::string html);
        std::string httpAndJSONParse(std::string wikiPage);

        struct CurlBuffer buffer;
        CURL *curl;
        CURLcode res;
        std::regex rgx;

        const std::string wikipediaFilters[7] = {"Help:", "Wikipedia:", "Portal:", "Template:", "Template_talk:", "Category:", "Special:"};
    };
}
