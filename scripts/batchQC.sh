#!/bin/sh
# usage snippet
if [ $# -lt 2 ]   
then                
  echo "usage: batchQC <data> <report-dir>"
  exit 1            
fi 
#lets set some variables
DATADIR=$1
REPORTDIR=$2
echo "Is Conda Activated?, better control C real quick if it isnt"
#list a tree for the data directory
tree $DATADIR
echo "looking for .fq.gz files in $DATADIR and outputting the fastQC report into $REPORTDIR"
find -d -s $DATADIR -name \*.fq.gz -print | xargs fastQC --threads 32 --outdir $REPORTDIR/$DATADIR/
#okay lets try multiQC now
echo "running multiQC on reports in $REPORTDIR"
echo "if conda is not activated and in the multiqc env, this won't work."
echo "conda activate multiqc-env && multiqc <report-dir>"
multiqc $REPORTDIR
