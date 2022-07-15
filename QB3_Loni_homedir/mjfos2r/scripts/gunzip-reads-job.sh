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
echo "beginning unzip job on all reads present"
echo "executing command gzip -d9 *.gz"
echo "#########################################"
for i in *.gz
do
  echo "unzipping ${i}"
  gzip -d9 *.gz
  echo "decompression finished, moving onto next file"
  echo " "
done
echo "#########################################"
echo "here's the directory now:"
ls
echo " "
echo "#########################################"
echo "Job Done!"
echo "#########################################"
date
echo "#########################################"
