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
# very useful https://unix.stackexchange.com/questions/533005/moving-a-file-based-on-specific-filename-to-specific-folder-based-on-filename
echo "running treepeat.sh to copy the structure of $DATADIR into new directory $REPORTDIR"
#run treepeat.sh
treepeat.sh $DATADIR $REPORTDIR
#################################################
# this is pointless I don't know Why I added it.
#echo "creating $REPORTDIR in $WORKDIR"
#mkdir $REPORDIR/$DATADIR/
#################################################
echo "looking for .fq.gz files in $DATADIR and outputting the fastQC report into $REPORTDIR"
# I think i need to use sed to change the path output from find, changing the first $DATADIR/
# into $REPORTDIR/
# # UPDATE:
# # AWK is probably a better choice
# # no clue how I'm gonna do that yet though, will be doing the tutorial on the stack exchange site though.
############################################################################################
# 32 threads is perfect for my mbp. it pins all 10 cpu cores at 95+% and has 60-70% memutil.
# 60-64 threads doesn't work as well
find -d -s $DATADIR -name \*.fq.gz -print | xargs fastQC --threads 32 --outdir $REPORTDIR/$DATADIR/ 
#okay lets try multiQC now
#dont forget to conda up.
echo "activating conda base environment to use multiqc"
conda activate base
echo "running multiQC on reports in $REPORTDIR"
multiqc $REPORTDIR
