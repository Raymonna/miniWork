#!/bin/bash
if [ $# != 2 ]; then
    echo "2 arguments are required "
    exit
else
    x=$1
    y=$2
    sum = $x + $y
    echo ` sum = $sum | bc `
fi
