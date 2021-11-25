#!/bin/bash

echo "Compiling question.cpp"
g++ -fstack-protector-all question.cpp -o question
echo "Compilation complete! Run the executable: ./question"
