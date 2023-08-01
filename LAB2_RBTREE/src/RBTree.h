#ifndef RB
#define RB

#include <vector>
#include "Node.h"
class RBTree{
public:
    RBTree();

    long size();

    void range(Node* node,std::vector<long> &res, double &first, double &last);
    
    void left_rotate(RBTree* T,Node* x);
    void right_rotate(RBTree* T,Node* x);
    void insert(double key,long idx);
    void fix_insertion(RBTree* T,Node* z);

    Node* root_;
    Node* nil_;
};
#endif
    