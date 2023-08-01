#include <TspSolver.h>
#include <vector>

class graph {
public:
    graph(TspReader &tr);
    std::vector<std::vector<int>> map;
    int num_cities;
    std::vector<City> cities;
};