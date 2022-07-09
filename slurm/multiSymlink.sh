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
echo " creating symlinks in unmapped_job/quants_wunmapped/ "
echo "#########################################"
echo " "
for i in trimmed.TR*.fq
do
  echo "#########################################"
  echo "creating symbolic link for reads ${i} at ../unmapped_job/${i}/${i}"
  ln -s ${i} ../unmapped_job/${i}.fq.gz.quant/${i}
  echo "symlink created"
  echo "continuing with loop"
  echo "#########################################"
  echo " "
done
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
