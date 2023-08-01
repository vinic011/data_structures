
#include <mysortfunctions.h>

// you only need to mantain the headers. You can create aux funcs, objects, or create a generic quicksort that can work with different functions to select the pivot.
int partition_fixed(std::vector<int> &v,int left, int right)
{
    int pivot = v[left];
    int l = left + 1;
    int r = right;
    while (true) {
        while (l < right && v[l] < pivot)
            l++;
        while (r > left && v[r] >= pivot)
            r--;
        if (l >= r)
            break;
        int aux = v[l];
        v[l] = v[r];
        v[r] = aux;
    }
    v[left] = v[r];
    v[r] = pivot;
    return r;
}

int partition_median(std::vector<int> &v,int left, int right)
{
    if (v[left] < v[right]){
        if (v[right] < v[(left + right)/2]) {
            int aux = v[left];
            v[left] = v[right];
            v[right] = aux;
        }
    } else {
        if (v[(right + left)/2] < v[left]){
            if (v[(right + left)/2] > v[right]) {
                int aux = v[left];
                v[left] = v[(left + right)/2];
                v[((right + left)/2)] = aux;
            } else {
                int aux = v[left];
                v[left] = v[right];
                v[right] = aux;
            }
        }
    }
    int pivot = v[left];
    int l = left + 1;
    int r = right;
    while (true) {
        while (l < right && v[l] < pivot)
            l++;
        while (r > left && v[r] >= pivot)
            r--;
        if (l >= r)
            break;
        int aux = v[l];
        v[l] = v[r];
        v[r] = aux;
    }
    v[left] = v[r];
    v[r] = pivot;
    return r;
}

void quick2rec(std::vector<int> &v, int min, int max, SortStats &stats) {
    if (min < max) {
        stats.recursive_calls += 1;
        int p = partition_median(v,min, max);
        quick2rec(v,min, p-1, stats);
        quick2rec(v,p+1, max, stats);
    }
}

void quick_1rec_fixed(std::vector<int> &v, int min, int max, SortStats &stats) {
    while (min < max) {
        stats.recursive_calls += 1;
        int p = partition_fixed(v,min, max);
        if (p-min < max-p) {
            quick_1rec_fixed(v, min, p-1, stats);
            min = p+1;
        } else {
            quick_1rec_fixed(v, p+1, max, stats);
            max = p-1;
        }
    }
}

void quick_1rec_median(std::vector<int> &v, int min, int max, SortStats &stats) {
    while (min < max) {
        stats.recursive_calls += 1;
        int p = partition_median(v,min, max);
        if (p-min < max-p) {
            quick_1rec_median(v, min, p-1, stats);
            min = p+1;
        } else {
            quick_1rec_median(v, p+1, max, stats);
            max = p-1;
        }
    }
}

/// the most comon quicksort, with 2 recursive calls
void myquicksort_2recursion_medianOf3(std::vector<int> &v, SortStats &stats)
{
    quick2rec(v, 0, v.size() - 1, stats);
    // you need to set the counting of recursive recursive_calls
    stats.recursive_calls = 1;
    // you need to set the depth = the maximum height of the tree of recursion calls.
    stats.depth_recursion_stack = 1;
    // the tester already knows the size of v and the algorithm name, it already measures time
    // you may set custom1 field if you want to measure anything else.
    stats.custom1 = 2;
} // function myquicksort_2recursion_medianOf3

/// quicksort with one recursive call
void myquicksort_1recursion_medianOf3(std::vector<int> &v, SortStats &stats)
{
    quick_1rec_median(v, 0, v.size() - 1, stats);
    // you need to set the counting of recursive recursive_calls
    stats.recursive_calls = 1;
    // you need to set the depth = the maximum height of the tree of recursion calls.
    stats.depth_recursion_stack = 1;
    // the tester already knows the size of v and the algorithm name, it already measures time
    // you may set custom1 field if you want to measure anything else.
    stats.custom1 = 2;
} // function myquicksort_1recursion_medianOf3
/// quicksort with fixed pivot
/// be sure to compare with equivalent implementation
/// e.g., if you do 1 recursive call, compare with the 1recursion version
void myquicksort_fixedPivot(std::vector<int> &v, SortStats &stats)
{
    quick_1rec_fixed(v, 0, v.size() - 1, stats);
    // you need to set the counting of recursive recursive_calls
    stats.recursive_calls = 1;
    // you need to set the depth = the maximum height of the tree of recursion calls.
    stats.depth_recursion_stack = 1;
    // the tester already knows the size of v and the algorithm name, it already measures time
    // you may set custom1 field if you want to measure anything else.
    stats.custom1 = 2;
} // myquicksort_fixedPivot