#!/bin/bash
date
echo "####################"
echo " JOB STARTED "
echo "####################"
echo " "
echo "loading modules: blast"
module load blast/2.11.0/gcc-9.3.0 
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
