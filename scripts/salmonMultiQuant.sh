#!/bin/bash

if [ $# -lt 3 ]
then
  echo "usage: salmonMultiQuant <path/to/index> <path/to/reads> <outputdir>"
  echo "Specify the directory where the salmon index is found"
  echo "Specify the directory where the trimmed reads are found"
  echo "Specify the directory where quant.sf+extras will be output into"
  echo "try again with the required arguments please"
  exit 1
fi
ACTIVE=$CWD
INDEX=$1
INPUT=$2
OUT=$3

echo "using index specified at $INDEX, reads specified at $INPUT, and outputting quant data to $OUT"
echo "changing directories into $INPUT to look for trimmed fastq files"
cd $INPUT
for i in trimmed.*.fq.gz
do
  salmon quant -i $INDEX -l SF -r ${i} --writeUnmappedNames --validateMappings -o $ACTIVE/$OUT/${i}.quant
done
#echo "moving all of the quant files into $OUT"
#find . -name "*.quant" -type d -exec cp -r {} $OUT \;
echo "done!"
#tree .
