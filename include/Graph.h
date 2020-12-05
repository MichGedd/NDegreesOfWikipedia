//
// Created by micha on 2020-09-20.
//

#pragma once
#include <iostream>
#include <string>
#include <vector>
#include <unordered_map>
#include <stack>

namespace NDegreesOfWikipedia {

    // Struct for graph nodes
    struct Node {
        std::string value;  // Name of article
        Node *parentNode;  // Pointer to parent node
        std::vector<Node *> childrenNodes;  // List of pointers to child nodes
    };

    class Graph {
    public:
        Graph(std::string value);
        void addNode(Node *parent, Node *nodeToAdd);
        Node *findNode(std::string nodeValue);
        bool nodeExists(std::string nodeValue);
        void addNodeConnection(Node *parent, Node *child);
        std::stack<Node *> findPathToRoot(Node *node);
        int size();
    private:
        Node topNode;
        std::unordered_map<std::string , Node> hashmap;
    };
}
