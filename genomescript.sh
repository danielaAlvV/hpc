#!/bin/bash
workdir=/LETHE/COURSES/data/bac_genomes/refseq/bacteria
list=/LETHE/COURSES/data/bac_genomes/refseq/xad

rm resultsgenome.txt

for name in $(head $list);
    do 
    sleep 1
    srun genomeinscript.sh $name
done