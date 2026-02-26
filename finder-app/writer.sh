#!/bin/bash

writefile=$1
writestr=$2

if [ $# -lt 2 ]; then
    echo "Error: missing arguments"
    exit 1
fi

writedir=$(dirname "$writefile")

mkdir -p "$writedir" || {
    echo "Error: could not create directory $writedir"
    exit 1
}

echo "$writestr" > "$writefile" || {
    echo "Error: could not write to file $writefile"
    exit 1
}
