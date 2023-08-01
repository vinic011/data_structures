#include "hash.h"

// LOOK FOR THE COMMENTS IN THE .H 
// TO UNDERSTAND WHAT EACH FUNCTION MUST DO

Hash::Hash(int tablesize, int (*hf) (std::string) ) {
 // CONSTRUTOR 
 this->_table.resize(tablesize);
 this->_hash_func = hf;
}

int Hash::add(std::string str, int &collisions) { 
    if(this->contains(str,collisions)){return 0;
    }else{
        this->_table[this->hash(str)].push_front(str);
        return 1;
    }
}//add

int Hash::remove(std::string str, int &collisions) { 
    if(!this->contains(str,collisions)){return 0;
    }else{
        this->_table[this->hash(str)].remove(str);
        return 1;
    }
}//remove


int Hash::hash(std::string str) { 
    return this->_hash_func(str);
}//hash
    
int Hash::contains(std::string str, int &collisions) { 
    collisions = 0;
    for(std::string s:this->_table[this->hash(str)]){
        collisions++;
        if(s == str){return 1;}
    }
    return 0;
}//contains


int Hash::worst_case() {
    int worst_size = 0;
    for(std::forward_list<std::string> list:this->_table){
        if(std::distance(list.begin(),list.end())> worst_size){
            worst_size = std::distance(list.begin(),list.end());
        }
    }
    return worst_size;
}//worst_case

int Hash::size() {
    int size = 0;
    for(std::forward_list<std::string> list:this->_table){
        size += std::distance(list.begin(),list.end());
    }
    return size;
}//size
