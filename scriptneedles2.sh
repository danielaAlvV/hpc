#!/bin/bash
algorithm="Needle"
nseq=$1
dbsize=$2

time1=$(date +%s)
sleep 1
time2=$(date +%s)
elapsed_time=$(echo "$time2 - $time1" | bc)

echo $elapsed_time; $nseq; $dbsize; $algorithm 