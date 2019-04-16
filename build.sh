#!/bin/bash

if [ $# -eq 1 ]
then
    rm -r build; mkdir build
    path=$(echo "$1" | cut -f 1 -d '.')
    output_filename=$(echo ${path#*/})
    flex -o "build/$output_filename.c" "$1"
    bison -d -o "build/yy_$output_filename.c" "bison/$output_filename.y"
    gcc -o "build/$output_filename.exe" -ll -lm "build/$output_filename.c" "build/yy_$output_filename.c"
fi
