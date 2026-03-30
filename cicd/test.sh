#!/bin/bash
set -e

echo "1 22 4444" | ./usr/bin/programm > output.txt
expected="4444"
if ! grep -q "$expected" output.txt; then
	echo "Test 1 failed"
	exit 1
fi

echo "1" | ./usr/bin/programm > output.txt
if [ -s output.txt ]; then
	echo "Test 2 failed"
	exit 1
fi

cho "" | ./usr/bin/programm > output.txt
if [ -s output.txt ]; then
	echo "Test 3 failed"
	exit 1
fi

cho "111 222 333" | ./usr/bin/programm > output.txt
if [ -s output.txt ]; then
	echo "Test 4 failed"
	exit 1
fi
rm output.txt
echo "all tests complete"
