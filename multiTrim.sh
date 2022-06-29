#!/bin/bash

if [ $# -lt 3 ]
then
  echo "usage: multiTrim <raw-data> <output-dir> <work-dir>"
  echo "Specify the directory where raw reads are found"
  echo "Specify the directory where trimmed reads will be output"
  echo "Specify the directory where work will be done"
  echo "try again with the required arguments please"
  exit 1
fi
IN=$1
OUT=$2
WORK=$3
TRIMEXEC=$"/Users/michaelfoster/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/trimmomatic-0.39.jar"
ADAPTER=$"/Users/michaelfoster/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/adapters/TruSeq3-SE.fa"
echo "using $TRIMEXEC as Trimmomatic"
echo "looking in $IN for reads to trim"
echo "copying reads into $WORK"
#find . -name "pattern" -print
find $IN -type f -name "*_1.fq.gz" -print -exec cp {} $WORK \;
echo "making directories for stats and logs"
mkdir $OUT/logs 
echo "changing directories to $WORK to begin the trimming"
cd $WORK 
echo "starting loop, this may take a while"
echo "using 32 threads and running as SE trimming against the TruSeq3-SE.fa adapters"
for i in *1.fq.gz
do
  java -jar $TRIMEXEC SE -threads 64 -trimlog ${i}.trimlog -summary ${i}.summary ${i} trimmed.${i} ILLUMINACLIP:$ADAPTER:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
done
echo "moving all trimmed files into trimmed!"
find $work -name "trimmed.*" -type f -exec mv {} $OUT \;
find $work \(-name "*.summary" -o -name ".trimlog"\) -type f -exec mv {} $OUT/logs/ \;
echo "finished!"
#echo "deleting temp directory"
#rm -rf $WORK
