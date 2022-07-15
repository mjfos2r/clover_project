#!/bin/bash 
#SBATCH -N 1               # request one node
#SBATCH -c 47
#SBATCH -t 23:00:00	
#SBATCH -p single          # in single partition (queue)
#SBATCH -A loni_pgtrain3
#SBATCH -o slurm-%j.out-%N # optional, name of the stdout, using the job number (%j) and the hostname of the node (%N)
#SBATCH -e slurm-%j.err-%N # optional, name of the stderr, using job and hostname values
# below are job commands
echo "#########################################"
date
echo "#########################################"
echo "##            starting job!            ##"
echo "#########################################"
module load parallel/20190222/intel-19.0.5
module list
echo " "
echo "moving to /work/mjfos2r/fastq"
cd /work/mjfos2r
echo " "
echo "currently in: $PWD"
echo " "
cd blast_job/unmapped
echo " currently in: $PWD"
echo " "
echo "####################"
echo "compressing fastas so seqtk will actually accept it as input for conversion."
find . -type f -name "*.unmapped.fq" | parallel -j47 gzip -9 {}
echo ""
echo "done"
echo "currently the directory mess looks like: "
ls
echo "#########################################"
echo "##              Job Done!              ##"
echo "#########################################"
date
echo "#########################################"
exit 0

