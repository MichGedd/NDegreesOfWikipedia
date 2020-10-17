//
// Created by micha on 2020-09-20.
//

#include "Graph.h"

using namespace std;
using namespace NDegreesOfWikipedia;

Graph::Graph(std::string value) {
    struct Node node;
    node.value = value;
    node.parentNode = NULL;
    this->topNode = node;

    pair<string, Node> pair (node.value, node);
    hashmap.insert(pair);
}

void Graph::addNode(Node *parent, Node *nodeToAdd) {
    if(nodeExists(nodeToAdd->value)) return;

    parent->childrenNodes.push_back(nodeToAdd);
    nodeToAdd->parentNode = parent;

    pair<string, Node> pair (nodeToAdd->value, *nodeToAdd);
    hashmap.insert(pair);
}

Node *Graph::findNode(std::string nodeValue) {
    if(nodeExists(nodeValue)) return &(hashmap.at(nodeValue));
    else return nullptr;
}

bool Graph::nodeExists(std::string nodeValue) {
    try {
        hashmap.at(nodeValue);
        return true;
    } catch (const out_of_range &outOfRange) {
        return false;
    }
}

void Graph::addNodeConnection(Node *parent, Node *child) {
    parent->childrenNodes.push_back(child);
}

std::stack<Node *> Graph::findPathToRoot(Node *node) {
    stack<Node *> path;

    Node *currentNode = node;
    do {
        path.push(currentNode);
        currentNode = currentNode->parentNode;
    } while(currentNode != NULL);

    return path;
}

int Graph::size() {
    return hashmap.size();
}

