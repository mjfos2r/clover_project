#!/bin/bash
echo "#########################################"
date
echo "#########################################"
echo "starting script"
echo "#########################################"
echo " "
echo "Currently in: $PWD"
echo " "
echo "moving to /work/mjfos2r/fastq"
cd /work/mjfos2r/fastq
echo " "
echo "currently in: $PWD"
echo " "
ls
echo " "
echo "#########################################"
echo " copying reads into unmapped_job/quants_wunmapped/ "
echo "#########################################"
echo " "
echo "#########################################"
echo "copying reads into ../unmapped_job/trimmed.TRXX/trimmed.TRXX.*.fq"
find . -type f -name "*.fq" | parallel -j47  cp {} /work/mjfos2r/unmapped_job/{}.gz.quant/{}
echo "#########################################"
echo " "
echo "#########################################"
echo "here's the directory now:"
ls
echo "and here's ../unmapped_job/"
ls ../unmapped_job/trimmed.*
echo " "
echo "#########################################"
echo "script done!"
echo "#########################################"
date
echo "#########################################"
