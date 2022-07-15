#!/bin/bash
#SBATCH -N 1               # request one node
#SBATCH -t 72:00:00	    # lets plan for a day? idk how long it'll take for one denovo much less 49
#SBATCH -p bigmem          # in single partition (queue)
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
echo "loading modules"
module load trinity/2.8.6/intel-19.0.5
echo " "
module list
echo " "
echo "###########################################"
echo "currently in: $PWD"
echo "moving to /work/mjfos2r/fastq"
cd /work/mjfos2r/fastq
echo "currently in: $PWD"
echo "beginning denovo assembly of alltranscripts.fq"
echo " "
Trinity --seqType fq --single alltranscripts.fq --output trinity-out/ --CPU 48 --max_memory 1500G
echo "done!"
echo " "
echo "###########################################"
echo "##		Job Complete!		##"
echo "###########################################"
echo "Time of completion:"
date
echo "##########################################"
# exit the job
exit 0
