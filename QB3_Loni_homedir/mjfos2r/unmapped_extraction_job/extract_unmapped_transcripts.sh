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
echo "running command"
for $directory in trimmed.*.fq.gz.quant
do
echo "extracting unmapped reads for ${directory}"
echo " "
do
  echo " starting subsequence extraction from ${directory}"
  ../seqtk/seqtk subseq ${directory}/*.fq ${directory}/aux_info/unmapped_names.txt > ${directory}/${directory}.unmapped.fq
  echo "command finished, continuing with next iteration of loop"
done
echo "loop finished"
echo " "
echo "############################################"
date
echo "############################################"
done
