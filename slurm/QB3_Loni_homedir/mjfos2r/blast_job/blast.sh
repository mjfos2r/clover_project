#!/bin/bash
#SBATCH -N 1               # request one node
#SBATCH -c 47
#SBATCH -t 72:00:00	        # request 5 minutes
#SBATCH -p single          # in single partition (queue)
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
echo " changing into blast_job"
cd /work/mjfos2r/blast_job/unmap_fa
echo "currently in: $PWD"
echo "starting loop for local blast of unmapped transcripts"
for i in *.fa
do
  echo "currently running ${i} against local blast database stored at $BLASTDB"
  blastx -query ${i} -db nr -out blastx.${i}.out -num_threads 47
  echo "done with ${i}, moving onto the next fasta file." 
done
echo " "
echo "#########################################"
echo "##              Job Done!              ##"
echo "#########################################"
date
echo "#########################################"
exit 0
