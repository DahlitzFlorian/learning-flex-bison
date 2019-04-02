#!/bin/bash

if [ $# -eq 1 ]
then
    rm -r build; mkdir build
    path=$(echo "$1" | cut -f 1 -d '.')
    output_filename=$(echo ${path#*/})
    flex -o "build/$output_filename.c" "$1"
    gcc -o "build/$output_filename.exe" -ll "build/$output_filename.c"
fi
