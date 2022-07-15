#!/bin/bash
#trinity-batch.sh

echo "$PWD"
echo "$READS"

echo "starting denovo assembly of TrR transcriptome from trimmed reads present in work/mjfos2r/fastq"

echo "currently in: $PWD"
echo "moving to /work/mjfos2r/fastq"

cd /work/mjfos2r/fastq
echo "currently in: $PWD"
echo "beginning denovo assembly of alltranscripts.fq"
echo " "
Trinity --seqType fq --single alltranscripts.fq --output trinity-out/ --CPU 48 --max_memory 1500G
echo "done!"
