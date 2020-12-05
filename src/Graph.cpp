//
// Created by micha on 2020-09-20.
//

#include "Graph.h"

using namespace std;
using namespace NDegreesOfWikipedia;

/**
 * Constructor for graph
 * @param value - name of starting article
 */
Graph::Graph(std::string value) {
    // Create the top node
    struct Node node;
    node.value = value;
    node.parentNode = NULL;
    this->topNode = node;

    // Add the top node and it's value to the hashmap
    pair<string, Node> pair (node.value, node);
    hashmap.insert(pair);
}

/**
 * Function for adding a node to the graph
 * @param parent - Parent node
 * @param nodeToAdd - Child node to add to graph
 */
void Graph::addNode(Node *parent, Node *nodeToAdd) {
    if(nodeExists(nodeToAdd->value)) return;  // Check if the node already exists

    // Create relationships
    parent->childrenNodes.push_back(nodeToAdd);
    nodeToAdd->parentNode = parent;

    // Add new node to hashmap
    pair<string, Node> pair (nodeToAdd->value, *nodeToAdd);
    hashmap.insert(pair);
}

/**
 * Function to find a node in the graph
 * @param nodeValue - Name of the article to find
 * @return - Pointer to node struct
 */
Node *Graph::findNode(std::string nodeValue) {
    // Check if the node exists, and return its memory address if it does.  Otherwise return a null pointer
    if(nodeExists(nodeValue)) return &(hashmap.at(nodeValue));
    else return nullptr;
}

/**
 * Function to check if node exists in the graph
 * @param nodeValue - Name of the article to find
 * @return - True if article exists, false if article does not exist
 */
bool Graph::nodeExists(std::string nodeValue) {
    try {
        hashmap.at(nodeValue);  // Check if article is in the hashmap
        return true;
    } catch (const out_of_range &outOfRange) {
        return false;  // Return false if the article does not exist
    }
}

/**
 * Function to update connections between nodes in a graph
 * @param parent - Pointer to parent node
 * @param child - Pointer to child node
 */
void Graph::addNodeConnection(Node *parent, Node *child) {
    parent->childrenNodes.push_back(child);
}

/**
 * Function to find path from node A to root node
 * @param node - Starting node of pathfinding algorithm
 * @return - Stack of nodes that show the path to root node
 */
std::stack<Node *> Graph::findPathToRoot(Node *node) {
    stack<Node *> path;

    Node *currentNode = node;
    // Add the parent node to stack until the parent node is NULL (i.e. the parent of the root node)
    do {
        path.push(currentNode);
        currentNode = currentNode->parentNode;
    } while(currentNode != NULL);

    return path;
}

/**
 * Function to get the size of the graph
 * @return - Size of the hashmap
 */
int Graph::size() {
    return hashmap.size();
}

