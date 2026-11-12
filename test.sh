#!/bin/bash

failed=0

check() {
  description=$1
  expected=$2
  actual=$3

  if [ "$actual" == "$expected" ]; then
    echo "PASS: $description"
  else
    echo "FAIL: $description (expected '$expected', got '$actual')"
    failed=1
  fi
}

check "add 5 3"       "8"  "$(bash calculator.sh add 5 3)"
check "subtract 10 4" "6"  "$(bash calculator.sh subtract 10 4)"
check "multiply 6 7"  "42" "$(bash calculator.sh multiply 6 7)"
check "divide 20 4"   "5"  "$(bash calculator.sh divide 20 4)"
check "divide by zero" "Error: cannot divide by zero" "$(bash calculator.sh divide 5 0)"

if [ $failed -eq 0 ]; then
  echo "ALL TESTS PASSED"
  exit 0
else
  echo "SOME TESTS FAILED"
  exit 1
fi
