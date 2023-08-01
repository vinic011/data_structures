
#include <IndexPointsAluno.h>
#include <iostream>

/// returns the number of elements in the index
long IndexPointsAluno::size() {
  return Tree_->size();
}

/// adds new element to the index. 
void IndexPointsAluno::add(double key, long idx) { 
  Tree_->insert(key,idx);
}


void IndexPointsAluno::find(std::vector<long> &res, double first, double last ) {
  Tree_->range(Tree_->root_,res,first,last);
}