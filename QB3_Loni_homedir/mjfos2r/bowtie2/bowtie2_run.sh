#!/bin/bash
#SBATCH -N 3               # request one node
#SBATCH -n 144              # use erry cpu on the node
#SBATCH -t 72:00:00	    # lets plan for a day? idk how long it'll take for one denovo much less 49
#SBATCH -p checkpt          # in single partition (queue)
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
module load bowtie2/2.3.5.1/gcc-9.3.0
echo " "
module list
export INDEX=/work/mjfos2r/bowtie2/index/bowtie2index
export READS=/work/mjfos2r/fastq/alltranscripts.fq
echo "using index at $INDEX to create bowtie2 alignment"
echo " "
echo "currently in: $PWD"
echo " "
echo "moving to /work/mjfos2r/bowtie2/"
cd /work/mjfos2r/bowtie2
echo "running bowtie alignment!"
bowtie2 --threads 144 -x $INDEX -U $READS -S transcripts.sam 
echo "###########################################"
echo "##		Job Complete!		##"
echo "###########################################"
echo "Time of completion:"
date
echo "##########################################"
# exit the job
exit 0
