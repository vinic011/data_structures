#include <TrocoSolver.h>

std::vector<unsigned int> DPMakeChange (const std::vector<unsigned int> &denom,unsigned int value) {
    int quant[value+1];
    quant[0] = 0;
    int ultima[value+1];
    ultima[0] = 0;
    int quantProv;
    int ultProv;
    for (int cents = 1; cents <= value; cents++) {
        quantProv = cents;
        ultProv = 0;
        for (int j = 0; j < denom.size(); j++) {
            if ((cents >= denom[j]) && (quant[cents - denom[j]] + 1 < quantProv)) {
                quantProv = quant[cents - denom[j]] + 1;
                ultProv = j;
            }
        }
        quant[cents] = quantProv;
        ultima[cents] = ultProv;
    }
    std::vector<unsigned int> coins;
    coins.resize(denom.size(), 0);
    while (value > 0) {
        coins[ultima[value]]++;
        value = value - denom[ultima[value]];
    }
    return coins;
}


void TrocoSolverPD::solve(const std::vector<unsigned int> &denom,unsigned int value, std::vector<unsigned int> &coins) {

    // fills a dummy answer with 2 coins of each denomination    
    coins.resize(denom.size(),0); 
    coins = DPMakeChange (denom, value);
    
}//solve