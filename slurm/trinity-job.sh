#!/bin/bash
 #SBATCH -N 1               # request one node
 #SBATCH -n 48              # use erry cpu on the node
 #SBATCH -t 24:00:00        # lets plan for a day? idk how long it'll take for one denovo much less 49
 #SBATCH -p single          # in single partition (queue)
 #SBATCH -A pgtrain3
 #SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
 #SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
 #SBATCH --mail-user mfo010@email.latech.edu
 #SBATCH --mail-type ALL
 # below are job commands
 date

 # Set some handy environment variables.

 export HOME_DIR=/home/$USER/trinity
 export WORK_DIR=/work/$USER/trinity

 # Make sure the WORK_DIR exists:
 mkdir -p $WORK_DIR
 # Copy files, jump to WORK_DIR, and execute a program called "trinity-batch.sh"
 cp $HOME_DIR/trinity $WORK_DIR
 cd $WORK_DIR
 ./trinity-batch.sh
 # Mark the time it finishes.
 date
 # exit the job
 exit 0
