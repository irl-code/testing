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
};
