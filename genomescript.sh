#!/bin/bash
workdir=/LETHE/COURSES/data/bac_genomes/refseq/bacteria
list=/LETHE/COURSES/data/bac_genomes/refseq/xad

rm resultsgenome.txt

for name in $(cat $list);
    do 
    sleep 0.1
    srun -c 1 genomeinscript.sh $name & 
done