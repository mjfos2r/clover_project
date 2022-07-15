#!/bin/bash
#SBATCH -p single
#SBATCH -N 1                  # gimme a node
#SBATCH -c 47                 # 47 cpus for this thing
#SBATCH -t 72:00:00           # full time requested
#SBATCH -A loni_pgtrain3           # name of allocation 
#SBATCH -o slurm-%j.out-%N    # name of stdout, using job number %j and hostname of node %N
#SBATCH -e slurm-%j.err-%N    # name of stderr, see above. 
#SBATCH --mail-user mfo010@email.latech.edu
#SBATCH --mail-type ALL

echo "####################"
date
echo "####################"
echo " JOB STARTED "
echo "####################"
echo " "
echo "loading modules: blast"
module load blast/2.10.1/gcc-9.3.0 
module list
echo "currently in: $PWD"
echo "changing to /work/mjfos2r/"
cd /work/mjfos2r
echo "currently in: $PWD"
echo " "
echo "creating database variable stored under DATABASE"
# Specify the database name here:
export DATABASE=nr
echo "$DATABASE"
echo " "
echo "Creating directory $DATABASE"
mkdir $DATABASE
ls
echo "moving to $DATABASE"
cd $DATABASE
echo "running update_blastdb.pl perl script"
echo "update_blastdb.pl --decompress --verbose $DATABASE"
update_blastdb.pl --decompress --verbose $DATABASE
echo " "
echo "####################"
echo " JOB DONE! "
echo "####################"
date
echo "####################"

