#!/bin/bash
#trinity-batch.sh

READS = '/work/mjfos2r/fastq'
echo "$PWD"
echo "$READS"
echo "starting denovo assembly of TrR transcriptome from trimmed reads present in $READS"

for i in $READS/trimmed.*.fq.gz
do
  Trinity --seqType fq --single ${i} --output trinity_output/${i} --CPU 47 --max_memory 188G
done
echo "done!"
