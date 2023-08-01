#include <TrocoSolver.h>

void TrocoSolverGreedy::solve(const std::vector<unsigned int> &denom,unsigned int value, std::vector<unsigned int> &coins) {
    int troco = 0;
    int denom_num = denom.size() - 1;
    coins.resize(denom.size(),0); 

    while ((denom_num >= 0) && (troco < value)) {
        while (denom[denom_num] > (value - troco)) {
            denom_num--;
        }
        while (troco +  denom[denom_num] <= value) {
            coins[denom_num]++;
            troco += denom[denom_num];
        }
        if (troco == value){
            return;
        }
        denom_num--;
    }
}//solve

// dica: iterar um vetor de tras pra frente
//https://stackoverflow.com/questions/3610933/iterating-c-vector-from-the-end-to-the-begin
//http://www.cplusplus.com/reference/vector/vector/rbegin/
