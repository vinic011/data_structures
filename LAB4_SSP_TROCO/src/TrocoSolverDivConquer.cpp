#include <TrocoSolver.h>
#include <numeric>

std::vector<unsigned int> DCMakeChange(const std::vector<unsigned int> &denom, int value, int & recursive_calls) {
    recursive_calls++;
    std::vector<unsigned int> coins;
    coins.resize(denom.size(),0);  
    if (value == 0) {
        return coins;
    }
    int q = value;
    coins[0] = value;
    for (int i = 0; i < denom.size(); i++) {
        if (denom[i] <= value) {
            auto count = DCMakeChange(denom, value - denom[i], recursive_calls);
            auto num_coins = std::accumulate(count.begin(), count.end(),0);
            if (q > num_coins + 1) {
                coins = count;
                coins[i]++;
                q = num_coins + 1;
            }
        }
    }
    return coins;
}

void TrocoSolverDivConquer::solve(const std::vector<unsigned int> &denom,unsigned int value, std::vector<unsigned int> &coins) {

    // fills a dummy answer with 1 coin of each denomination  
    int recursive_calls = 0;
    coins = DCMakeChange(denom, value,recursive_calls);
    this->recursivecalls = recursive_calls;
}//solve