#!/bin/bash
###
#usage
###

#okay so we need to feed in the file of unmapped-names.txt and then grep the trimmed read
#file against them, pull the index line and the next line, then output them into a new file.

#something like
# -f to pull from the file of unmapped names
# -A 1 to pull the next line after matching line
# the file corresponding to the trimmed reads
# Write to > output file containing unmapped reads.
echo "############################################"
echo "script started"
echo "############################################"
echo " "
echo "currently in: $PWD"
echo " "
echo "starting loop to look for unmapped reads"
echo " "
echo "############################################"
echo "##  *   *   *   *   *   *   *   *   *  *  ##"
echo "############################################"
for directory in quants_wunmapped/*
do
echo "running command"
echo " "
echo "extracting unmapped reads for ${directory}"
echo " "
grep -f ${directory}/aux_info/unmapped-names.txt -A 1 ${directory}/trimmed.*.fq > ${directory}.unmapped.fq
echo "command finished, continuing with next iteration of loop"
echo " "
echo "############################################"
date
echo "############################################"
done
