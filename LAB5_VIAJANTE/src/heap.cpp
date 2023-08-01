#include<heap.h>

heap::heap(graph g) {
    City parent= g.cities[0];
    pq.push(std::make_pair(0,std::make_pair(0,-parent.getId())));
}


void heap::add_edge(int from, int to, graph& g) {
    auto w = -g.map[from - 1][to - 1];
    pq.push(std::make_pair(w,std::make_pair(-from,-to)));
}