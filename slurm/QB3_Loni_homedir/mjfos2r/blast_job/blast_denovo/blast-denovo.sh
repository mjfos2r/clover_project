#!/bin/bash
#SBATCH -N 1               # request one node
#SBATCH -c 48
#SBATCH -t 72:00:00	        # request 5 minutes
#SBATCH -p workq        # in single partition (queue)
#SBATCH -A loni_pgtrain3
#SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
#SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
#SBATCH --mail-user mfo010@email.latech.edu
#SBATCH --mail-type ALL

# below are job commands
echo "#########################################"
date
echo "#########################################"
echo "##            starting job!            ##"
echo "#########################################"
module load blast/2.10.1/gcc-9.3.0
module list
echo "Currently in: $PWD"
echo " "
echo "setting databse variable"
export BLASTDB=/work/mjfos2r/nr
echo " changing into spades_out"
cd /work/mjfos2r/spades_out
echo "currently in: $PWD"
echo "starting loop for local blast of unmapped transcripts"
blastx -query hard_filtered_transcripts.fasta -db nr -out blastx.transcripts_hard_filtered.out -num_threads 48
echo " "
echo "#########################################"
echo "##              Job Done!              ##"
echo "#########################################"
date
echo "#########################################"
exit 0
