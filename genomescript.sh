#!/bin/bash
workdir=/LETHE/COURSES/data/bac_genomes/refseq/bacteria
list=/LETHE/COURSES/data/bac_genomes/refseq/xad

rm resultsgenomeid.txt


for name in $(cat $list);
    do 
    sleep 0.3
    srun -c 1 bash genomeinscript.sh $name & 
done