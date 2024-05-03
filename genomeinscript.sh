#!/bin/bash
name=$1

workdir=/LETHE/COURSES/data/bac_genomes/refseq/bacteria
folder=$workdir/$name
fastafile="$folder/$name*.fna"
gff_file="$folder/$name*.gff"

gunzip $folder/*.gz 
sequence_length=$(grep -v ">" $fastafile | wc -m)
gc_count=$(grep -v ">" $fastafile| sed "s/[AT]//g" | wc -m)
gc_content=$(echo "scale=5; $gc_count/$sequence_length" | bc)

gene_count=$(grep -c "gene" $gff_file)

echo "$name; $sequence_length; $gene_count; $gc_content" >> resultsgenome.txt
#echo $sequence_length
#echo $gc_count
#echo $gc_content