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
echo "loading modules"
module load bowtie2/2.3.5.1/gcc-9.3.0
echo " "
module list
export REFERENCE_GENOME=/work/mjfos2r/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna
echo "using reference genome to generate bowtie2 index"
echo "Reference Genome = $REFERENCE_GENOME"
echo " "
echo "currently in: $PWD"
echo " "
echo "moving to /work/mjfos2r/bowtie2/"
cd /work/mjfos2r/bowtie2
echo "building bowtie index!"
bowtie2-build -f $REFERENCE_GENOME --large-index --verbose -p --threads 48 bowtie2index
echo "###########################################"
echo "##		Job Complete!		##"
echo "###########################################"
echo "Time of completion:"
date
echo "##########################################"
# exit the job
exit 0
