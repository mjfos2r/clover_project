#!/bin/bash
#SBATCH -N 1               # request one node
#SBATCH -n 48              # use erry cpu on the node
#SBATCH -t 72:00:00	    # lets plan for a day? idk how long it'll take for one denovo much less 49
#SBATCH -p single          # in single partition (queue)
#SBATCH -A loni_pgtrain3
#SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
#SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
#SBATCH --mail-user mfo010@email.latech.edu
#SBATCH --mail-type ALL
# below are job commands
echo "###########################################"
date
echo "###########################################"
echo "##		starting job		##"
echo "###########################################" 
echo " "
module list
echo "currently in: $PWD"
# Set some handy environment variables.
echo " "
echo "moving to $WORK_DIR/trinity to start the job"
cd /work/mjfos2r/fastq
echo "currently in: $PWD"
echo " "
echo "###########################################"
cat *.fq > alltranscripts.fq
echo "###########################################"
echo " "
echo "###########################################"
echo "##		Job Complete!		##"
echo "###########################################"
echo "Time of completion:"
date
echo "##########################################"
# exit the job
exit 0
