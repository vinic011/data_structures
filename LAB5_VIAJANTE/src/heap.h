#include <graph.h>
#include <queue>

class heap {
public:
    heap(graph g);
    std::priority_queue<std::pair<int,std::pair<int,int>>> pq; // weigth, from vertex, to vertex
    void add_edge(int from, int to, graph& g);
};