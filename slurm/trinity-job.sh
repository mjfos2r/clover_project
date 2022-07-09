#!/bin/bash
 #SBATCH -N 1               # request one node
 #SBATCH -n 48              # use erry cpu on the node
 #SBATCH -t 72:00:00        # lets plan for a day? idk how long it'll take for one denovo much less 49
 #SBATCH -p single          # in single partition (queue)
 #SBATCH -A pgtrain3
 #SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
 #SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
 #SBATCH --mail-user mfo010@email.latech.edu
 #SBATCH --mail-type ALL
 # below are job commands
 echo "###########################################"
 date
 echo "###########################################"
 echo "##               starting job            ##"
 echo "###########################################" 
 echo " "
 echo "loading modules"
 module load trinity/2.8.6/intel-19.0.5
 echo " "
 module list
 echo "currently in: $PWD"
 # Set some handy environment variables.
 echo " "
 echo "setting home and work dir vars"
 export HOME_DIR=/home/$USER
 export WORK_DIR=/work/$USER
 echo "home: $HOME_DIR work: $WORK_DIR"
 echo " "
 # Make sure the WORK_DIR exists:
 echo "checking to make sure $WORK_DIR exists"
 mkdir -p $WORK_DIR
 echo " "
 # Copy files, jump to WORK_DIR, and execute a program called "trinity-batch.sh"
 echo "copying stuff from the $HOME_DIR into the $WORK_DIR"
 echo " "
 echo "currently in: $PWD"
 cp -R $HOME_DIR/trinity $WORK_DIR
 ls -R $WORK_DIR/trinity
 echo " "
 echo "moving to $WORK_DIR/trinity to start the job"
 cd $WORK_DIR/trinity
 echo "currently in: $PWD"
 echo " "
 echo "running trinity-batch.sh"
 echo " "
 echo "###########################################"
 ./trinity-batch.sh
 echo "###########################################"
 echo "##               Script Done!            ##"
 echo "###########################################"
 echo " "
 ls -R
 echo "###########################################"
 echo "##               Job Complete!           ##"
 echo "###########################################"
 echo "Time of completion:"
 date
 echo "##########################################"
 # exit the job
 exit 0
