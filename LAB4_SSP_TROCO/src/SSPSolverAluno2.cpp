#include <SubsetSumSolver.h>
# include <cmath>
# include <algorithm>

long dot_product(std::vector<long> vec,std::vector<char> comb) {
    if (vec.size() != comb.size()) {
        return -1;
    }
    long dp = 0;
    for (long i = 0; i < vec.size(); i++) {
        dp += vec[i] * int(comb[i]);
    }
    return dp;
}

std::vector<char> to_binary(long value, long size) {
    std::vector<char> binary;
    binary.resize(size);
    for (long k = 0; k < size; ++k) {
        binary[k] = (value >> k) & 1;
    }
    return binary;
}


/// Aluno2: segunda solucao do aluno = Meet-in-the-Middle OU Branch & Bound
 bool SSPSolverAluno2::solve(const std::vector< long> &input, long value, std::vector< char> &output) {
 
    output.resize(input.size());

    // create vec1 and vec2

    long middle = input.size() /2;

    std::vector<long> vec1;
    vec1.resize(middle);

    std::vector<long> vec2;
    vec2.resize(input.size() - middle);

    for (int i = 0; i < input.size(); i++) {
        if (i < middle) {
            vec1[i] = input[i];
        } else {
            vec2[i - middle] = input[i];
        }
    }
    
    // sums 

    std::vector<long> sums1;
    long combinations1 = pow(2, middle);
    sums1.resize(combinations1);
    std::vector<char> binary;
    long sum;
    for (long i = 0; i < combinations1; i++) {
        binary = to_binary(i, middle);
        sum = dot_product(vec1, binary);
        sums1[i] = sum;
    }
    auto sorted_sum = sums1;
    std::sort(sorted_sum.begin(), sorted_sum.end());

    std::vector<long> difs2;
    long combinations2 = pow(2, input.size() - middle);
    difs2.resize(combinations2);
    for (long i = 0; i < combinations2; i++) {
        binary = to_binary(i, input.size() - middle);
        sum = dot_product(vec2, binary);
        difs2[i] = value - sum;
        if (std::binary_search(sorted_sum.begin(), sorted_sum.end(), difs2[i])) {
            auto it = std::find(sums1.begin(), sums1.end(), difs2[i]);
            auto j = std::distance(sums1.begin(), it);
            auto first = to_binary(j, middle);
            for (long i = 0; i < output.size(); i++) {
                if (i < middle) {
                    output[i] = first[i];
                } else {
                    output[i] = binary[i - middle];
                }
            }
            return true;
        }
    }
    return false;
    
}
