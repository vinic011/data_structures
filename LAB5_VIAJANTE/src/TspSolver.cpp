#include <heap.h>
#include <algorithm>

void pre_order(int id, std::vector<int>& percourse, std::vector<std::vector<int>> min_tree) {
    percourse.push_back(id);
    for (int j = 0; j < min_tree[id - 1].size(); j++) {
        pre_order(min_tree[id-1][j], percourse, min_tree);
    }
}


void TspSolver::solve(TspReader &tr, std::vector<int> &percourse) {
        // here it is filling the vector with  1,2,3,...n
        // you should fill it with a permutation that represents the TSP solution

        graph g(tr);
        heap h(g);
        std::vector<bool> visited(g.num_cities, false);
        std::vector<std::vector<int>> min_tree(g.num_cities);

        while (!h.pq.empty()) {
            int from = -h.pq.top().second.first;
            int to = -h.pq.top().second.second;
            h.pq.pop();
            if (!visited[to - 1]) {
                visited[to - 1] = true;
                if (from > 0) {
                    min_tree[from - 1].push_back(to);
                }

                for (int nbr = 1; nbr <= g.num_cities; nbr++) {
                    if (!visited[nbr - 1]) {
                        h.add_edge(to, nbr, g);
                    }
                }
            }
        }

        pre_order(1, percourse, min_tree);
    
}//solve

