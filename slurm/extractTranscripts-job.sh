#!/bin/bash
 #SBATCH -N 1               # request one node
 #SBATCH -n 47
 #SBATCH -t 72:00:00	        # request 5 minutes
 #SBATCH -p single          # in single partition (queue)
 #SBATCH -A pgtrain3
 #SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
 #SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
 # below are job commands
echo "#########################################"
date
echo "#########################################"
echo "##            starting job!            ##"
echo "#########################################"
echo " "
echo "Currently in: $PWD"
echo " "
echo "moving to /work/mjfos2r/fastq"
cd /work/mjfos2r/fastq
echo " "
echo "currently in: $PWD"
echo " "
echo "copying script for symlink into $PWD"
cp /home/mjfos2r/unmapped_extraction_job/multiSymlink.sh .
ls
echo " "
echo "#####################################################"
echo " creating symlinks in unmapped_job/quants_wunmapped/ "
echo "#####################################################"
echo " "
echo "executing script: multiSymlink.sh"
./multiSymlink.sh
echo " "
echo "##################################################"
echo "now running script to extract unmapped transcripts"
echo "##################################################"
echo " "
echo " currently in: $PWD"
echo " "
echo "moving to /work/unmapped_job"
echo " "
cd /work/unmapped_job
echo " "
echo " currently in: $PWD"
echo "copying extraction script into $PWD"
cp /home/mjfos2r/unmapped_extraction_job/extract_unmapped_transcripts.sh .
ls
echo " "
echo "executing script: extract_unmapped_transcripts.sh"
echo " "
date
echo " "
./extract_unmapped_transcripts.sh
echo " "
echo "#########################################"
echo "##              Job Done!              ##"
echo "#########################################"
date
echo "#########################################"
