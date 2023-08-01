#include <SubsetSumSolver.h>

bool SSPSolverPD::solve(const std::vector<long> &input,
                        long value, std::vector<char> &output)
{
    long n = input.size();
    long c = value;
    std::vector<std::vector<long>> B;
    B.resize(n + 1, std::vector<long>(c + 1));

    for (long i = 0; i <= c; i++) {
        B[0][i] = 0;
    }

    for (long k = 1; k <= n; k++) {
        for (long i = 0; i <= c; i++) {
            long w = input[k - 1];
            if (w > i) {
                B[k][i] = B[k - 1][i];
            } else {
                if (B[k - 1][i] < B[k - 1][i - w] + w) {
                    B[k][i] = B[k - 1][i - w] + w;
                } else {
                    B[k][i] = B[k - 1][i];
                }
            }
        }
    }
    
    long r = c;
    long s = B[n][c];
    long w;
    output.resize(n);

    for (long i = n; i > 0; i--) {
        if (B[i - 1][r] == s) {
            output[i - 1] = 0;
        } else {
            output[i - 1] = 1;
            w = input[i - 1];
            s -= w;
            r -= w;
        }
    }

    bool hasSolution = (B[n][c] == value);
    
    return hasSolution;
}