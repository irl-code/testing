//
//  Stack.cpp
//  TestingApp
//
//  Created by Hamza Wahab on 01/01/2025.
//

#include <iostream>

class Stack {
    int capacity;
    int top;
    int* stack;
public:
    Stack(const int size): capacity(size), top(-1), stack(new int[capacity]){}
    bool isEmpty() const {return top == -1;}
    void Resize(){
        capacity += capacity * 2;
        int* new_stack = new int[capacity];
        for(int i = 0; i <= top; ++i)
            new_stack[i] = stack[i];
        delete [] stack;
        stack = new_stack;
    }
};
