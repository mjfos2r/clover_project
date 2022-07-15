#!/bin/bash
 #SBATCH -N 1               # request one node
 #SBATCH -n 48              # use erry cpu on the node
 #SBATCH -t 24:00:00	    # lets plan for a day? idk how long it'll take for one denovo much less 49
 #SBATCH -p single          # in single partition (queue)
 #SBATCH -A pgtrain3
 #SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
 #SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
 #SBATCH --mail-user mfo010@email.latech.edu
 #SBATCH --mail-type ALL
 # below are job commands
 date
 echo "starting job"
 # Set some handy environment variables.
 echo "setting home and work dir vars"
 export HOME_DIR=/home/$USER
 export WORK_DIR=/work/$USER
 echo "home: $HOME_DIR work: $WORK_DIR"
 # Make sure the WORK_DIR exists:
 echo "checking to make sure $WORK_DIR exists"
 mkdir -p $WORK_DIR
 # Copy files, jump to WORK_DIR, and execute a program called "trinity-batch.sh"
 echo "copying stuff from the $HOME_DIR into the $WORK_DIR"
 echo "currently in: $PWD"
 cp -R $HOME_DIR/trinity $WORK_DIR
 ls -R $WORK_DIR/trinity
 echo "moving to $WORK_DIR/trinity to start the job"
 cd $WORK_DIR/trinity
 echo "currently in: $PWD"
 echo "running trinity-batch.sh"
 ./dryrun.sh
 # Mark the time it finishes.
 date
 echo "job done!"
 # exit the job
 exit 0
