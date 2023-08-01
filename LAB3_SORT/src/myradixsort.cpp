
#include <mysortfunctions.h>
#include <queue>

int digits_hexa(int );

void myradixsort(std::vector<int> &v, SortStats &stats) 
{
    std::cout << "Oi";
    int base = 16;
    std::vector<std::queue<int>> aux;
    aux.resize(base);
    int digits = digits_hexa(*max_element(v.begin(),v.end()));
    int mask = 0xF;
    int shift = 0;
    for (int i = 0; i < digits; i++){
        for (int j = 0; j < v.size(); j++){
            aux[((v[j] & (mask << shift)) >> shift)].push(v[j]);
        }
        for (int j = 0, k = 0; j < base; j++){
            while (!aux[j].empty()){
                v[k++] = aux[j].front();
                aux[j].pop();
            }
        }
        shift = shift + 4;
    }
    // you need to set the counting of recursive recursive_calls
    stats.recursive_calls = 1;
    // you need to set the depth = the maximum height of the tree of recursion calls. 
    stats.depth_recursion_stack = 1;
    // the tester already knows the size of v and the algorithm name, it already measures time
    // you may set custom1 field if you want to measure anything else.
    stats.custom1 = 2;
}

int digits_hexa(int value)
{
    int digits = 0;
    int mask = 0x0F;
    while (value > 0){
        digits++;
        value = value >> 4;
    }
    return digits;
}