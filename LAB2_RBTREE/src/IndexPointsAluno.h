#ifndef CES12_ALUNOINDEXPOINTS_H
#define CES12_ALUNOINDEXPOINTS_H

#include <vector>
#include <map>
#include <IndexPointsAbstract.h>
#include "RBTree.h"


class IndexPointsAluno : public IndexPointsAbstract {
    
public:

    long size();
        
    void add (double key, long idx );

    //look for a range of values
    void find(std::vector<long> &res, double first, double last ) ;

private: 
    RBTree* Tree_ = new RBTree();
};//class

#endif
