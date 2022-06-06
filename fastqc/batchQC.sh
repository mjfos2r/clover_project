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
# subshell change to workdir
#cd $WORKDIR
#*

#lets set some variables
DATADIR=$1
REPORTDIR=$2
#list a tree for the data directory
tree $DATADIR
#run treepeat.sh
./treepeat.sh $DATADIR $REPORTDIR
#run fastQC and output reports to the reportdirs.
#if this works first time I'll buy a lotto ticket
find *.fq.gz | xargs fastQC --outdir $REPORTDIR 
#okay lets try multiQC now
multiqc $REPORTDIR
