# NDegreesOfWikipedia
 
This project was created by Michael Geddes for Queen's University class ELEC 278.  The goal of this project is to find the shortest path between two Wikipedia articles.

### Prerequisites
This project requires docker and the nlohmann json library.  Download the library from GitHub (https://github.com/nlohmann/json) and extract it to a folder named external.

### Running the Project
To build the project run the following command

```docker build --target deploy -t n-wiki .  ```

To run the container run the following command

```docker run -it n-wiki```
