# include "RBTree.h"

RBTree::RBTree(){
    this->nil_ = this->root_ = new Node(0,0,BLACK,nullptr,nullptr,nullptr);
}

long RBTree::size(){
    return this->root_->size();
}

void RBTree::range(Node* node,std::vector<long> &res, double &first, double &last){
    if(node != this->nil_){
        if(node->key_ < first){
            node = node->rchild_;
            RBTree::range(node,res,first,last);
        }else{
            if(node->key_ > last){
                node = node->lchild_;
                RBTree::range(node,res,first,last);
            }else{
                res.push_back(node->idx_);
                RBTree::range(node->rchild_,res,first,last);
                RBTree::range(node->lchild_,res,first,last);
            }
        }
    }
}

void RBTree::left_rotate(RBTree* T,Node* x){
    auto y = x->rchild_;
    x->rchild_ = y->lchild_;
    if(y->lchild_ != T->nil_){
        y->lchild_->father_ = x;
    }
    y->father_ = x->father_;
    if(x->father_ == T->nil_){
        T->root_ = y;
    }else if(x == x->father_->lchild_){
        x->father_->lchild_ = y;
    }else{
        x->father_->rchild_ = y;
    }
    y->lchild_ = x;
    x->father_ = y;
}
void RBTree::right_rotate(RBTree* T,Node* x){
    auto y = x->lchild_;
    x->lchild_ = y->rchild_;
    if(y->rchild_ != T->nil_){
        y->rchild_->father_ = x;
    }
    y->father_ = x->father_;
    if(x->father_ == T->nil_){
        T->root_ = y;
    }else if(x == x->father_->rchild_){
        x->father_->rchild_ = y;
    }else{
        x->father_->lchild_ = y;
    }
    y->rchild_ = x;
    x->father_ = y;

}

void RBTree::insert(double key,long idx){
    auto T = this;
    Node* z = new Node(idx,key,BLACK,this->nil_,this->nil_,this->nil_);
    auto y = T->nil_;
    auto x = T->root_;
    while(x!=T->nil_){
        y = x;
        if(z->key_ < x->key_){
            x = x->lchild_;
        }else{
            x = x->rchild_;
        }
    }
    z->father_ = y;
    if(y == T->nil_){
        T->root_ = z;
    }else if(z->key_ < y->key_){
        y->lchild_ = z;
    }else{
        y->rchild_ = z;
    }
    z->lchild_ = T->nil_;
    z->rchild_ = T->nil_;
    z->color_ = RED;
    RBTree::fix_insertion(T,z);
}

void RBTree::fix_insertion(RBTree* T,Node* z){
    while(z->father_->color_ == RED){
        if(z->father_ == z->father_->father_->lchild_){
            auto y = z->father_->father_->rchild_;
            if(y->color_ == RED){
                z->father_->color_ = BLACK;
                y->color_ = BLACK;
                z->father_->father_->color_ = RED;
                z = z->father_->father_;
            }else if(z == z->father_->rchild_){
                z = z->father_;
                RBTree::left_rotate(T,z);
            }
            else {
                z->father_->color_ = BLACK;
                z->father_->father_->color_ = RED;
                RBTree:right_rotate(T,z->father_->father_);
            }
        }else{
            auto y = z->father_->father_->lchild_;
            if(y->color_ == RED){
                z->father_->color_ = BLACK;
                y->color_ = BLACK;
                z->father_->father_->color_ = RED;
                z = z->father_->father_;
            }else if(z == z->father_->lchild_){
                z = z->father_;
                RBTree::right_rotate(T,z);
            } else {
                z->father_->color_ = BLACK;
                z->father_->father_->color_ = RED;
                RBTree::left_rotate(T,z->father_->father_);
            }
        }
    }
    T->root_->color_ = BLACK;
}
