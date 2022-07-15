#!/bin/bash
 #SBATCH -N 1               # request one node
 #SBATCH -n 47
 #SBATCH -t 01:00:00	        # request 5 minutes
 #SBATCH -p single          # in single partition (queue)
 #SBATCH -A pgtrain3
 #SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
 #SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
 # below are job commands
echo "#########################################"
date
echo "#########################################"
echo "starting job!"
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
for i in trimmed.TR*.fq
do
  echo "#########################################"
  echo "creating symbolic link for reads ${i} at ../unmapped_job/${i}/${i}"
  echo "ln -s ${i} ../unmapped_job/${i}.fq.gz.quant/${i}"
  echo "symlink created"
  echo "ls ../unmapped_job/${i}.fq.gz.quant/"
  echo "continuing with loop"
  echo "#########################################"
  echo " "
done
echo "#########################################"
echo "here's the directory now:"
ls
echo "and here's ../unmapped_job/"
ls -R ../unmapped_job/
echo " "
echo "#########################################"
echo "Job Done!"
echo "#########################################"
date
echo "#########################################"
