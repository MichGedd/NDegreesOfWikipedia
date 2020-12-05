#include <iostream>
#include <thread>
#include <sys/resource.h>

#include "WebCrawler.h"
#include "WebCrawlerManager.h"

using namespace std;
using namespace NDegreesOfWikipedia;

int main() {

    const u_int maxThreads = thread::hardware_concurrency();

    int defaultThreads = min(maxThreads, (u_int)6);
    int threadsToUse;
    int itr = 0;

    string start, end;

    WebCrawler *testCrawler = new WebCrawler();

    cout << "Welcome to N Degrees of Wikipedia!" << endl;
    cout << "Type  the name of a Wikipedia article you want to start at and the wikipedia article" << endl;
    cout << "you would like to end at, and the program will calculate the path to get there!" << endl;

    cout << endl;

    cout << "Only the end part of the Wikipedia URL should be used.  For example, if you want to use the" << endl;
    cout << "URL \'https://en.wikipedia.org/wiki/C%2B%2B\', the Wikipedia article for C++, valid input " << endl;
    cout << "would be everything after the \'wiki/\', i.e. valid input would be \'C%2B%2B\'" << endl;

    cout << endl;

    do {
        if(itr > 0)
            cout << "That Wikipedia article threw an error in the Wikipedia API!  Please choose another article" << endl;
        cout << "Which Wikipedia article would you like to start at?" << endl;
        cin >> start;
        itr++;
    } while (!(testCrawler->webpageExists(start)));

    itr = 0;

    do {
        if(itr > 0)
            cout << "That Wikipedia article threw an error in the Wikipedia API!  Please choose another article" << endl;
        cout << "Which Wikipedia article would you like end at?" << endl;
        cin >> end;;
        itr++;
    } while (!(testCrawler->webpageExists(end)));

    cout << endl;

    cout << "This application is multithreaded to improve performance.  Based on your hardware, up to " << maxThreads << " thread are supported" << endl;
    cout << "By default " << defaultThreads << " threads will be used based on your hardware setup.  You can change the number of threads below." << endl;
    cout << "How many threads would you like to use?  Thread counts less than 1 and above " << maxThreads << " will default to " << defaultThreads  << "." << endl;
    try {
        string buffer;
        cin >> buffer;
        threadsToUse = stoi(buffer, nullptr);
        threadsToUse = threadsToUse <= 0 || threadsToUse > maxThreads ? defaultThreads : threadsToUse;
    } catch (invalid_argument &invalidArgument) {
        cout << "Invalid characters!";
        threadsToUse = defaultThreads;
    }

    cout << threadsToUse << " threads will be used." << endl;

    //WebCrawlerManager w("Professional_wrestling", "Electric_power", 6);
    //WebCrawlerManager w("Canada", "2007_Nobel_Peace_Prize", 6);
    WebCrawlerManager w(start, end, threadsToUse);
    w.run();

    return 0;
}
