#!/bin/bash

timestamp=$(date +%Y%m%d%H%M%S)
commit_hash=$(git rev-parse --short HEAD)

for file in *.log; do
    mv "$file" "${file%.log}_${timestamp}.log"
done

for file in *.py; do
    mv "$file" "${file%.py}_${commit_hash}.py"
done