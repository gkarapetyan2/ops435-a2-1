#!/bin/bash

# data file: a1_final_data
test_data=a2_final_data
echo "Test data file: ${test_data}"

cat ${test_data}

./ur.py -h

./ur.py -l user ${test_data}
./ur.py -l host ${test_data}
./ur.py -u rchan -t daily ${test_data}
./ur.py -u rchan -t weekly ${test_data}
./ur.py -r 10.40.105.99 -t daily ${test_data}
./ur.py -r 10.40.105.99 -t weekly ${test_data}

./ur.py -l user ${test_data} -v
./ur.py -l host ${test_data} -v
./ur.py -u asmith -t daily ${test_data} -v
./ur.py -u asmith -t weekly ${test_data} -v
./ur.py -r 10.40.105.130 -t daily ${test_data} -v
./ur.py -r 10.40.105.130 -t weekly ${test_data} -v
