#!/bin/sh
# usage snippet
if [ $# -lt 2 ]   
then                
  echo "usage: batchQC <data> <report-dir>"
  exit 1            
fi 
############################################################################################
# //TODO: 
# // FIX REPORT OUTPUT TO PROPER DIRECTORIES
############################################################################################
#lets set some variables
DATADIR=$1
REPORTDIR=$2
############################################################################################
# // TODO:
# // include check to make sure conda is activated so multiQC works.
# https://stackoverflow.com/questions/226703/how-do-i-prompt-for-yes-no-cancel-input-in-a-linux-shell-script

echo "Is Conda Activated?, better control C real quick if it isnt"
#list a tree for the data directory
tree $DATADIR
############################################################################################
#okay this next bit is broken until fixed
# //todo 
# //get the fastqc reports to be output into their corresponding directory depending on the input file.
# // dunno how I'm gonna do that yet, may not be able to use find.
# very useful https://unix.stackexchange.com/questions/533005/moving-a-file-based-on-specific-filename-to-specific-folder-based-on-filename
#
#
# NOT RUNNING TREEPEAT ANYMORE, DIDN'T WORK ANYWAYS
############################################################################################
#echo "running treepeat.sh to copy the structure of $DATADIR into new directory $REPORTDIR"
#run treepeat.sh
#treepeat.sh $DATADIR $REPORTDIR
############################################################################################
# this is pointless I don't know Why I added it.
#echo "creating $REPORTDIR in $WORKDIR"
#mkdir $REPORDIR/$DATADIR/
############################################################################################
echo "looking for .fq.gz files in $DATADIR and outputting the fastQC report into $REPORTDIR"
############################################################################################
# 32 threads works nice on my 10 core MBP
# will attempt again with 60-64 threads
# 32 threads = 11 minutes for the clover data
# 64 threads = much slower/doesn't work
# what about 48 threads?
# 48 threads = 20 minutes.
# definitely keep it at 32 threads
############################################################################################
find -d -s $DATADIR -name \*.fq.gz -print | xargs fastQC --threads 32 --outdir $REPORTDIR/$DATADIR/
############################################################################################
#okay lets try multiQC now
echo "running multiQC on reports in $REPORTDIR"
############################################################################################
multiqc $REPORTDIR
############################################################################################
