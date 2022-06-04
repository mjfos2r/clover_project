#!/bin/sh
#work in prog
find *.fq.gz | xargs fastQC --outdir=/$OUTPUTDIR/$SAMPLEDIR/
