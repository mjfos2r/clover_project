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

for directory in quants_wunmapped
do 

grep -f ${directory}/aux_info/unmapped-names.txt -A 1 corresponding_trimmmed_reads.fq > unmapped_reads_TRXX.fa

