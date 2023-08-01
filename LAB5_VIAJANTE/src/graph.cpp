#include <graph.h>

graph::graph(TspReader &tr) {
    num_cities = tr.getNumCities();
    tr.copyCitiesVector(cities);
    map.resize(num_cities , std::vector<int>(num_cities));
    for (int i = 0; i < num_cities; i++) {
        for (int j = 0; j < num_cities; j++) {
            map[i][j] = cities[i].disti(cities[j]);
        }
    }
}