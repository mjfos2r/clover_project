#!/bin/sh
if [ $# -lt 2 ]   
then                
  echo "usage: batchQC <data> <report-dir>"
  exit 1            
fi 
#set var to current directory so subshell doesn't mess up.
WORKDIR=$PWD
#*
# this broke the script
## subshell change to workdir
#cd $WORKDIR
#*

#lets set some variables
DATADIR=$1
REPORTDIR=$2
#list a tree for the data directory
tree $DATADIR
#okay this next bit is broken until fixed
# //todo 
# //get the fastqc reports to be output into their corresponding directory depending on the input file.
# // dunno how I'm gonna do that yet, may not be able to use find.
echo "running treepeat.sh to copy the structure of $DATADIR into new directory $REPORTDIR"
#run treepeat.sh
treepeat.sh $DATADIR $REPORTDIR
#run fastQC and output reports to the reportdirs.
#if this works first time I'll buy a lotto ticket
#############
# this is pointless I don't know Why I added it.
#echo "creating $REPORTDIR in $WORKDIR"
#mkdir $REPORDIR/$DATADIR/
#############
echo "looking for .fq.gz files in $DATADIR and outputting the fastQC report into $REPORTDIR"
#can't wait for the addition of threads to completely break the script
# I think i need to use sed to change the path output from find, changing the first $DATADIR/
# into $REPORTDIR/
find -d -s $DATADIR -name \*.fq.gz -print | xargs fastQC --threads 32 --outdir $REPORTDIR/$DATADIR/ 
#okay lets try multiQC now
multiqc $REPORTDIR
