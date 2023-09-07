#!/bin/bash

# Read input file into an array
words=$(printf "%s\nFREE" "$(cat word_list.txt | shuf | tail -n 24)" | shuf)


echo "| B | I | N | G | O |"
echo "|:-:|:-:|:-:|:-:|:-:|"
for i in {1..25..5}; do
    printf "| %s | %s | %s | %s | %s |\n" \
        "$(echo "${words}" | sed -n "${i}p")" \
        "$(echo "${words}" | sed -n "$(( ${i} + 1 ))p")" \
        "$(echo "${words}" | sed -n "$(( ${i} + 2 ))p")" \
        "$(echo "${words}" | sed -n "$(( ${i} + 3 ))p")" \
        "$(echo "${words}" | sed -n "$(( ${i} + 4 ))p")"
done

