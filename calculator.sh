#!/bin/bash

# Usage: bash calculator.sh <operation> <number1> <number2>

operation=$1
a=$2
b=$3

case $operation in
  add)
    echo $((a + b))
    ;;
  subtract)
    echo $((a - b))
    ;;
  multiply)
    echo $((a * b))
    ;;
  divide)
    if [ "$b" -eq 0 ]; then
      echo "Error: cannot divide by zero"
      exit 1
    fi
    echo $((a / b))
    ;;
  *)
    echo "Usage: bash calculator.sh add|subtract|multiply|divide num1 num2"
    exit 1
    ;;
esac
