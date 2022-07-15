#!/bin/bash

 #SBATCH -N 1               # request one node
 #SBATCH -t 00:05:00	        # request 5 minutes
 #SBATCH -p single          # in single partition (queue)
 #SBATCH -A pgtrain3
 #SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
 #SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
 # below are job commands
 date
 echo "job starting"
 echo "loading modules"
 module load 
 echo "moving into work/seqtk to make the program"
 cd /work/mjfos2r/seqtk
 echo "$PWD"
 make
 echo "Done!"
 # Mark the time it finishes.
 date
 # exit the job
 exit 0
