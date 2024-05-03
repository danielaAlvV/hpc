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

ID=$(grep "##species" $gff_file | head -n 1 | cut -d"=" -f2)

taxonomy=$(docker run --rm ncbi/edirect  /bin/bash -c  "efetch -db taxonomy -id $ID -format xml | xtract -pattern Taxon -block '*/Taxon' -tab '\n'  -element Id,Rank,TaxId,ScientificName" | grep "phylum" | cut -f 3)

echo "$name; $sequence_length; $gene_count; $gc_content; $taxonomy" >> resultsgenomeid.txt
#echo $sequence_length
#echo $gc_count
#echo $gc_content