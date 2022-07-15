#!/bin/bash
#trinity-batch.sh

WORK_DIR = '/work/mjfos2r/trinity'
echo "$PWD"
echo "$READS"
echo "starting denovo assembly of TrR transcriptome from trimmed reads present in $READS"
cd /work/mjfos2r/fastq

for i in trimmed.*.fq.gz
do
  echo "Trinity --seqType fq --single ${i} --output $WORK_DIR/trinity_output/${i} --CPU 47 --max_memory 188G"
done
echo "done!"
