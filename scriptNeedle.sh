#!/bin/bash
algorithm="Needle"
threads=1
anseq=(1 8 16)
adbsize=(1 4 8)

for number in ${threads[@]};
    do 
    for nseq in ${anseq[@]};
        do
        for dbsize in ${adbsize[@]};
            do 
            srun -c 1 scriptneedles2.sh $number $nseq $dbsize &
            done
        done
    done