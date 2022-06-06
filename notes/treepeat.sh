#!/bin/sh

if [ $# -lt 2 ]
then
  echo "usage: treepeat <source> <output>"
  exit 1
fi

WORKDIR=$PWD
SOURCEDIR=$1
OUTPUT=$2

echo "using $1 as source and copying directory structure into ../fastQC_reports"
echo "creating directory for fastQC output"
cd $WORKDIR &&  mkdir $OUTPUT/
TARGETDIR="$OUTPUT/"
echo "copying directory structure of $METADIR into $TARGETDIR"
tree -dfi --noreport $SOURCEDIR | xargs -I{} mkdir -p "$TARGETDIR/{}"
echo "treePeat done!"
tree -df $TARGETDIR
#then run quickQC
#then run multiQC
