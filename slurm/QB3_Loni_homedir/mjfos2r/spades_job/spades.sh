#!/bin/bash

#SBATCH -N 2               	# request two nodes
#SBATCH -n 96
#SBATCH -t 72:00:00	        # request 72 hours
#SBATCH -p checkpt		# using checkpt
#SBATCH -A loni_pgtrain3	# allocation
#SBATCH -o slurm-%j.out-%N 
#SBATCH -e slurm-%j.err-%N
# below are job commands
date
echo "job starting"
echo "loading modules"
module load spades 
module list
echo "moving into work/seqtk to make the program"
cd /work/mjfos2r/
echo "currently in: $PWD"
echo " "
echo "running spades assembly"
echo " "
date
echo " "
spades.py --rna -s fastq/alltranscripts.fq -t 96 -m 384 -o spades_out/
echo "Done!"
# Mark the time it finishes.
date
# exit the job
exit 0
