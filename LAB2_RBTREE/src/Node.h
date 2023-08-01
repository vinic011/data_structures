#ifndef NODE
#define NODE

enum color{
    RED = true,
    BLACK = false,
};

class Node{
public:
    Node(long index,double key,bool col,Node* father,Node* lchild,Node* rchild);
    Node *lchild_,*rchild_,*father_;
    long size();
    bool color_;
    long idx_;
    double key_;
};


#endif