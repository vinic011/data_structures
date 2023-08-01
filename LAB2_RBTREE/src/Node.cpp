# include <Node.h>

Node::Node(long index,double key,bool col,Node* father,Node* lchild,Node* rchild){
    this->idx_ = index;
    this->key_ = key;
    this->color_ = col;
    this->father_ = father;
    this->lchild_ = lchild;
    this->rchild_ = rchild;
}

long Node::size(){
    return 1 + (this->lchild_->lchild_ == nullptr ? 0 : this->lchild_->size()) + (this->rchild_->lchild_== nullptr ? 0 : this->rchild_->size());
}

