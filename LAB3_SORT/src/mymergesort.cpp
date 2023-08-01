
#include <mysortfunctions.h>
#include <algorithm>

void merge(std::vector<int>::iterator begin,std::vector<int>::iterator mid,std::vector<int>::iterator end);
void merge_sort(std::vector<int>::iterator begin,std::vector<int>::iterator end,SortStats &stats);
void merge_iterative(std::vector<int> &,int,int);
void merges_iterative(std::vector<int> &,int,int,int);

void mymergesort_recursive(std::vector<int> &v, SortStats &stats) 
{
    merge_sort(v.begin(), v.end(), stats);
    // you need to set the counting of recursive recursive_calls
    stats.recursive_calls = 1;
    // you need to set the depth = the maximum height of the tree of recursion calls. 
    stats.depth_recursion_stack = 1;
    // the tester already knows the size of v and the algorithm name, it already measures time
    // you may set custom1 field if you want to measure anything else.
    stats.custom1 = 2;
}

void mymergesort_iterative(std::vector<int> &v, SortStats &stats) 
{
    merge_iterative(v,0,v.size()-1);
    // you need to set the counting of recursive recursive_calls
    stats.recursive_calls = 1;
    // you need to set the depth = the maximum height of the tree of recursion calls. 
    stats.depth_recursion_stack = 1;
    // the tester already knows the size of v and the algorithm name, it already measures time
    // you may set custom1 field if you want to measure anything else.
    stats.custom1 = 2;
}

// aux functions

void merge(std::vector<int>::iterator begin, std::vector<int>::iterator mid, std::vector<int>::iterator end)
{
    std::vector<int> aux;
    auto begin_ = begin, mid_ = mid;
    while (begin_ != mid && mid_ != end){
        if (*begin_ > *mid_){
            aux.push_back(std::move(*mid_));
            mid_++;
        } else {
            aux.push_back(std::move(*begin_));
            begin_++;
        }
    }
    std::move(begin_,mid,std::back_inserter(aux));
    std::move(mid_,end,std::back_inserter(aux));
    std::move(aux.begin(),aux.end(),begin);
}

void merge_sort(std::vector<int>::iterator begin, std::vector<int>::iterator end, SortStats &stats)
{
    auto dist = std::distance(begin,end);
    if (dist > 1){
        stats.recursive_calls += 1;
        auto mid = begin + dist/2;
        merge_sort(begin, mid, stats);
        merge_sort(mid, end, stats);
        merge(begin, mid, end);
    }
}

void merges_iterative(std::vector<int> &v,int i,int m,int f)
{
    int n = f-i;
    int aux[n];
    int i1 = i;
    int i2 = i;
    int i3 = m + 1;
    while (i2 <= m && i3 <= f)
        if (v[i2] < v[i3])
            aux[i1++] = v[i2++];
        else
            aux[i1++] = v[i3++];
    while (i2 <= m)
        aux[i1++] = v[i2++];
    while (i3 <= f)
        aux[i1++] = v[i3++];
    for (int j = i; j <= f; j++)
        v[j] = aux[j];
}

void merge_iterative(std::vector<int> &v,int i,int f) {
    int b = 1; 
    while (b < f) {
        int p = i; 
        while (p+b <= f) {
            int r = std::min(f, p-1+2*b);
            int m = p+b-1; 
            merges_iterative(v,p, m, r);
            p += 2*b;
        }
        b *= 2; 
    }
}

    
