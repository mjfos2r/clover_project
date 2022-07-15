#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/4 ; mjfos2r pts/4 2022-07-06 17:57 . 88065 (38.108.51.12) ; 06-Jul-2022 17:57 ; 38.108.51.12)
ls
vim
ls -a
cd ..
ls
cd ..
ls
cd ..
ls
cd ~
which tree
ls /bin/
who
ls
l
exit
#0(qbc2 ; mjfos2r ; root ; bash -c exec sh -c 'cd; umask 077; mkdir -p ".ssh" && { [ -z `tail -1c .ssh/authorized_keys 2>/dev/null` ] || echo >> ".ssh/authorized_keys" || exit 1; } && cat >> ".ssh/authorized_keys" || exit 1; if type restorecon >/dev/null 2>&1; then restorecon -F ".ssh" ".ssh/authorized_keys"; fi ' ; sshd: mjfos2r@notty ; ; 06-Jul-2022 18:05 ; 38.108.51.12)
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/4 ; mjfos2r pts/4 2022-07-06 18:05 . 93135 (38.108.51.12) ; 06-Jul-2022 18:05 ; 38.108.51.12)
#neat
grep
vim slurmTemplate
ls
ls -a
mkdir scripts
cd $_
ls
vim mydemo.sh
mv ../hello-slurm.sh 
mv ../hello-slurm.sh .
ls
vim hello-slurm.sh 
chmod 755 hello-slurm.sh 
chmod 755 mydemo.sh 
sbatch hello-slurm.sh
vim hello-slurm.sh 
sbatch hello-slurm.sh
which bash
vim hello-slurm.sh 
sbatch hello-slurm.sh
squeue
sinfo
squeue
cd ..
vim allocation.txt
cat allocation.txt 
cd scripts/
ls
cat hello-slurm.sh 
vim hello-slurm.sh 
sbatch hello-slurm.sh 
#whyyyy
#it has the shebang
#don't do this..
vim hello-slurm.sh 
sbatch hello-slurm.sh 
squeue
squeue | grep "mjfos2r"
squeue -u mjfos2r
scontrol
ls
cat slurm-259168.out 
#lol
cd ..
mkdir myjob
mv scripts/mydemo.sh myjob/
ls -R
sbatch scripts/hello-slurm.sh
ls
cat slurm-259169.out 
#neat
# need to get with nic to see about uploading all of the raw sequencing data to be able to then run the grep on the unmapped reads.
top
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/0 ; mjfos2r pts/0 2022-07-08 12:48 . 241375 (76.165.48.2) ; 08-Jul-2022 12:48 ; 76.165.48.2)
which trinity
sinfo
who
slurm --help
squeue
sacct
sinfo
sshare
sshare | grep "mjfos2r"
sstat
sview
ok
sinfo
module avail
add trinity/2.12.0/intel-19.0.5
module add trinity/2.12.0/intel-19.0.5
module add trinity/2.8.6/intel-19.0.5
modules display
module show
module display
module whatis trinity/2.8.6/intel-19.0.5
module show
module --help
module list
ls -a
cd ..
ls
cd ..
ls
cd ..
ls
cd ~
cd ..
cd work/
ls
cd mjfos2r/
ls
pwd
touch hello.txt
touch --help
ls
ls myjob/
rm -rf myjob/
rm hello.txt 
mkdir raw_reads
mkdir trimmed
cd raw_reads/
pwd
#0(qbc1 ; mjfos2r ; root ; bash -c /usr/libexec/openssh/sftp-server ; sshd: mjfos2r@notty ; ; 08-Jul-2022 13:13 ; 76.165.48.2)
ls
cd ..
ls
rm -rf raw_reads
ls
rm -rf trimmed/*
ls trimmed/
ls
ls trimmed
rmdir trimmed
ls trimmed
cd trimmed/
ls
ls -a
rm .DS_Store
cd ..
rmdir trimmed
ls
sinfo
ls
cd ~
ls
mkdir trinity
cd $_
vim run-trinity.sh
mv run-trinity.sh trinity-TrR.sh
cat trinity-TrR.sh
cd ..
cd trinity/
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/22 ; mjfos2r pts/22 2022-07-08 13:37 . 15446 (76.165.48.2) ; 08-Jul-2022 13:37 ; 76.165.48.2)
ls
cd trinity/
ls
vim trinity-batch.sh
ls
vim trinity-TrR.sh
vim trinity-batch.sh 
vim trinity-TrR.sh
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/23 ; mjfos2r pts/23 2022-07-08 13:56 . 38325 (76.165.48.2) ; 08-Jul-2022 13:56 ; 76.165.48.2)
ls
cd trinity/
ls
mv trinity-TrR.sh
mv trinity-TrR.sh mjf-trinity-job-070822.sh
ls
cd work/mjfos2r
cd ..
cd work/mjfos2r/
ls
readlink -f fastq
vim trinity-batch.sh 
exit
vim trinity-TrR.sh 
ls
cat mjf-trinity-job-070822.sh 
cat mjf-trinity-job-070822.sh | sed -i 's/mydemo/trinity-batch/g'
cat mjf-trinity-job-070822.sh | sed 's/mydemo/trinity-batch/g' > mjf-trinity-job-070822.sh 
cat mjf-trinity-job-070822.sh 
#dammit
rm mjf-trinity-job-070822.sh 
ls
mv trinity-TrR.sh trinity-job.sh
vim trinity-job.sh 
exit
ls
ls fastq/
ls fastq/ | wc
#cool
cd ~
;s
ls
cat slurm-259169.out 
mv slurm-259169.out myjob/
cat scripts/
ls scripts/
cat scripts/slurm-259168.out 
mv scripts/slurm-259168.out myjob/
ls
cp trinity/trinity-* scripts/
ls scripts/
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/22 ; mjfos2r pts/22 2022-07-08 14:40 . 228373 (76.165.48.2) ; 08-Jul-2022 14:40 ; 76.165.48.2)
cd trinity/
ls
vim trinity-job.sh 
cd /work/mjfos2r/
ls
cd ..
cd ~
cd scripts/
ls
vim go2work.sh
chmod 755 go2work.sh 
./go2work.sh 
ls
#damn
go2work.sh
./go2work.sh 
set alias go2work="cd /work/mjfos2r/"
go2work
rm go2work.sh 
cd ..
ls
cd scripts/
ls
mv ../trinity/trinity-job.sh .
ls
cat trinity-
cat trinity-job.sh 
vim trinity-job.sh 
cp trinity-job.sh ../trinity/
cd ../trinity/
ls
cat trinity-job.sh
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/1 ; mjfos2r pts/1 2022-07-08 15:56 . 23523 (76.165.48.2) ; 08-Jul-2022 15:56 ; 76.165.48.2)
module list
ls
cd trinity/
cat *
vim trinity-job.sh 
module all
module
module avail
module load trinity/2.8.6/intel-19.0.5
ls
vim trinity-job.sh 
chmod 755 trinity-job.sh 
chmod 755 trinity-batch.sh 
cd ..
sbatch trinity/trinity-job.sh
ls
cat slurm-259864.out 
vim trinity/trinity-job.sh
sbatch trinity/trinity-job.sh
ls
cat slurm-259864.out 
ls
cat slurm-259868.out 
cd /work/mjfos2r
ls
cd trinity/
ls
cd ..
rmdir trinity/
cd ~
ls
cd trinity/
ls
vim trinity-job.sh 
sbatch trinity/trinity-job.sh
cd ..
sbatch trinity/trinity-job.sh
ls
sinfo
sjobs
squeue -u mjfos2r
ls
cat slurm-259876.out 
cd /work/mjfos2r
ls
cd trinity/
ls
cat trinity-batch.sh 
cd ~/trinity/
ls
vim trinity-job.sh
cat ../slurm-259876.out 
vim trinity-job.sh 
sbatch trinity/trinity-job.sh
cd ..
sbatch trinity/trinity-job.sh
ls
cat slurm-259877.out 
rm -rf /work/mjfos2r/trinity
ls /work/mjfos2r
cd trinity/
ls
vim trinity-job.sh
ls
cd ..
sbatch trinity/trinity-job.sh
ls
cat slurm-259884.out 
vim trinity/trinity-job.sh 
sbatch trinity/trinity-job.sh
ls
cat slurm-259885.out 
module avail
module avail | grep jelly
module avail | grep "jelly"
ls
rm slurm-2598*
ls
cd trinity/
cp trinity-*
ls
cp trinity-job.sh dryrun.sh
ls
vim dryrun.sh 
vim trinity-job.sh 
vim trinity-batch.sh 
#fuck
cp ../scripts/trinity-job.sh .
vim trinity-job.sh 
vim trinity-job.sh
ls
chmod 755 dryrun-job.sh
cd ..
sbatch trinity/dryrun-job.sh
ls
cat slurm-259897.out 
vim trinity/dryrun-job.sh 
sbatch trinity/dryrun-job.sh
ls
rm slurm-259897.out
ls
cat slurm-259898.out 
vim trinity/dryrun-job.sh 
rm -rf /work/mjfos2r/trinity/
sbatch trinity/dryrun-job.sh
ls
cat slurm-259903.out 
vim trinity/dryrun.sh 
sbatch trinity/dryrun-job.sh
ls
cat slurm-259908.out 
vim trinity/dryrun.sh 
sbatch trinity/dryrun-job.sh
ls
cat slurm-259909.out
#neat
vim trinity/dryrun.sh 
cd trinity/
ls
vim dryrun.sh 
ls trinity-job.sh 
cat trinity-job.sh 
vim trinity-job.sh 
sbatch trinity-job.sh
ls
cat slurm-259910.out 
cd ..
rm -rf /work/mjfos2r/trinity/
cat trinity/trinity-batch.sh
cd trinity/
ls
vim dryrun.sh 
ls
rm slurm-259910.out 
sbatch trinity-job.sh
ls
cat slurm-259911.out 
vim trinity-batch.sh 
cat trinity-job.sh 
vim trinity-batch.sh 
sbatch trinity-job.sh
ls
cat slurm-259912.out 
ls
cat *
cat trinity-batch.sh 
vim trinity-batch.sh 
sbatch trinity-job.sh
ls
cat slurm-259913.out 
rm -rf /work/mjfos2r/trinity
ls
mkdir slurm-reports
mv slurm-* slurm-reports/
ls
mv slurm-reports/ slurm_reports
ls
mkdir dryrun
mv dryrun*.sh dryrun
ls
[mjfos2r@qbc2 trinity]$ cat slurm-259913.out 
Fri Jul
vim trinity-job.sh 
sbatch trinity-job.sh
ls
cat slurm-259915.out 
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/0 ; mjfos2r pts/0 2022-07-09 10:58 . 30616 (96.71.149.245) ; 09-Jul-2022 10:58 ; 96.71.149.245)
ls
mkdir slurm_reports
mv slurm-* slurm_reports/
ls
PWD
pwd
cat trinity-batch.sh 
ls trinity
cat trinity/slurm-259915.out 
ls
rm trinity-batch.sh
cd trinity/
ls
cat trinity-batch.sh 
cat trinity-job.sh 
vim trinity-job.sh 
sbatch trinity-job.sh
ls
cat slurm-260074.out 
vim trinity-job.sh
module avail
module avail | grep "trinity"
vim trinity-job.sh 
module list
module load trinity/2.8.6/intel-19.0.5 
vim trinity-job.sh 
mv slurm-* slurm_reports/
ls
sbatch trinity-batch.sh 
sbatch trinity-job.sh
ls
cat slurm-260075.out 
vim trinity-job.sh 
mv slurm-260075.out  slurm_reports/
ls
mv slurm_reports/* ../slurm_reports/
ls
ls -R
rmdir slurm_reports/
cd ..
ls
cd slurm_reports/
ls
mkdir trinity_job
mv slurm-* trinity_job/
ls
cd ..
ls
sbatch trinity/trinity-job.sh 
ls
who
ls
cat slurm-260076.out
#UGH
sinfo | grep "mjfos2r"
sinfo
squeue -u mjfos2r
squeue
who
ls
mv slurm-260076.out slurm_reports/trinity_job/
ls
mkdir unmapped_extraction_job
cd $_
;s
ls
clear
ls
touch extract_unmapped_transcripts.sh
cd ..
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/0 ; mjfos2r pts/0 2022-07-09 11:33 . 52770 (96.71.149.245) ; 09-Jul-2022 11:33 ; 96.71.149.245)
ls
cd unmapped_extraction_job/
vim extract_unmapped_transcripts.sh 
who
who | wc
squeue
squeue | wc
#please fix trinity omfg i have stuff i need the data for
exit
#0(qbc2 ; mjfos2r ; root ; bash -c /usr/libexec/openssh/sftp-server ; sshd: mjfos2r@notty ; ; 09-Jul-2022 11:51 ; 96.71.149.245)
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-09 12:52 . 112950 (96.71.149.245) ; 09-Jul-2022 12:52 ; 96.71.149.245)
cd /work/mjfos2r/unmapped_job/
ls
rm pathnames.txt 
ls
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-09 12:57 . 115371 (96.71.149.245) ; 09-Jul-2022 12:57 ; 96.71.149.245)
squeue
sinfo
who
who | wc
cd ..
ls
ls | wc
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/3 ; mjfos2r pts/3 2022-07-09 13:38 . 137369 (96.71.149.245) ; 09-Jul-2022 13:38 ; 96.71.149.245)
cd /work/mjfos2r/unmapped_job/
ls
ls -l
l
k
who
work
ls
ls -1
la
ls -a
ls -a -1
tree
ls -r 
ls -R
ls -1 -R
man ls
man cat
info 'coreutils' man cat
ls /bin/
module avail | grep salmon
module avail
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/3 ; mjfos2r pts/3 2022-07-09 15:55 . 211285 (96.71.149.245) ; 09-Jul-2022 15:55 ; 96.71.149.245)
cd /work/mjfos2r/unmapped_job/
ls
cd trimmed.TR14_CKDL210019355-1a-AK2788_HGV5WBBXX_L3_1.fq.gz.quant/
ls
cd aux_info/
ls
ln -s ../../../fastq/trimmed.TR14_CKDL210019355-1a-AK2788_HGV5WBBXX_L3_1.fq.gz trimmed.TR14.fq.gz
ls
#wait
#need to unzip these.
rm trimmed.TR14.fq.gz 
ls
cd ..
cd fastq/
ls
gzip --help
gzip -d9 *.gz
ls
cd ..
cd fastq/
ls
pwd
cd ~
vim gunzip-reads-job.sh
head scripts/hello-slurm.sh 
vim gunzip-reads-job.sh
sbatch gunzip-reads-job.sh 
ls
squeue -u mjfos2r
scancel 260110
squeue -u mjfos2r
ls
cat gunzip-reads-job.sh 
vim gunzip-reads-job.sh 
sbatch gunzip-reads-job.sh 
squeue -u mjfos2r
watch squeue -u mjfos2r
scancel 260111
ls
cat slurm-260111.out 
vim gunzip-reads-job.sh 
sbatch gunzip-reads-job.sh 
watch squeue -u mjfos2r
ls /work/mjfos2r/fastq/
watch squeue -u mjfos2r
squeue
watch squeue -u mjfos2r
ls
lcd slurm-260112.out 
cat slurm-260112.out 
cd /work/mjfos2r/
ls
ls unmapped_job/
ls trimmed.TR*
ls unmapped_job/TR*
ls unmapped_job/trimmed.TR*
ls unmapped_job/
ls unmapped_job/ | wc
ls unmapped_job/
cd ~
vim symlink-job
vim gunzip-reads-job.sh 
vim symlink-job.sh 
sbatch dryrun-symlink.sh
ls
cat slurm-260114.out
vim dryrun-symlink.sh 
sbatch dryrun-symlink.sh
ls
cat slurm-260115.out 
vim dryrun-symlink.sh 
ls
mv batch-symlink.sh batch-symlink-job.sh
ls
rm symlink-job.sh
mv *.sh scripts/
mv slurm-* slurm_reports/
ls
cd scripts/
ls
ls /work/mjfos2r/unmapped_job/
ls /work/mjfos2r/unmapped_job/ | wc
#halfway there!
ls
cd ..
ls
cd unmapped_extraction_job/
ls
vim extract_unmapped_transcripts.sh 
ls
mv ../scripts/batch-symlink-job.sh .
ls
mv batch-symlink-job.sh extractTranscripts-job.sh
vim extractTranscripts-job.sh
vim multiSymlink.sh
vim extractTranscripts-job.sh
vim multiSymlink.sh
vim extractTranscripts-job.sh
ls
cat extract_unmapped_transcripts.sh 
cat extractTranscripts-job.sh 
cat multiSymlink.sh 
vim multiSymlink.sh 
vim extractTranscripts-job.sh 
ls
ls /work/mjfos2r/unmapped_job/
vim extractTranscripts-job.sh 
ls /work/mjfos2r/unmapped_job/ | wc
#19 left! WOO 
#GOING AT THE SPEED OF DIAL UP! 
ls /work/mjfos2r/unmapped_job/ | wc
ls
cat ../scripts/hello-slurm.sh 
vim extractTranscripts-job.sh 
ls /work/mjfos2r/unmapped_job/ | wc
watch ls /work/mjfos2r/unmapped_job/ | wc
ls
ls /work/mjfos2r/unmapped_job/ | wc
ls /work/mjfos2r/unmapped_job/
ls /work/mjfos2r/unmapped_job/ | wc
ls
cd ..
ls
cd unmapped_extraction_job/
cat extractTranscripts-job.sh 
cat extract_unmapped_transcripts.sh 
ls
cat multiSymlink.sh 
cd ..
ls
cd trinity
ls
cat trinity-batch.sh 
cat trinity-job.sh 
vim trinity-job.sh 
cd ..
ls
cd unmapped_extraction_job/
ls
vim extractTranscripts-job.sh 
ls /work/mjfos2r/unmapped_job/ | wc
exit
#0(qbc1 ; mjfos2r ; root ; bash -c /usr/libexec/openssh/sftp-server ; sshd: mjfos2r@notty ; ; 09-Jul-2022 19:13 ; 96.71.149.245)
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/15 ; mjfos2r pts/15 2022-07-09 19:14 . 141622 (96.71.149.245) ; 09-Jul-2022 19:14 ; 96.71.149.245)
cd /work/mjfos2r/unmapped_job/
ls | wc
ls
ls | wc
lls
ls
ls -A
ls
ls | wc
vim contents.txt
ls > currcontents.txt
grep -v -f contents.txt currcontents.txt 
ls
cat contents.txt 
cat currcontents.txt 
diff
diff --help
diff -y currcontents.txt contents.txt 
exit
#0(qbc2 ; mjfos2r ; root ; bash -c rsync --server . /work/mjfos2r/unmapped_job/ ; sshd: mjfos2r@notty ; ; 09-Jul-2022 19:39 ; 96.71.149.245)
#0(qbc1 ; mjfos2r ; root ; bash -c rsync --server . /work/mjfos2r/unmapped_job/ ; sshd: mjfos2r@notty ; ; 09-Jul-2022 19:40 ; 96.71.149.245)
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-09 19:40 . 51813 (96.71.149.245) ; 09-Jul-2022 19:40 ; 96.71.149.245)
cd /work/mjfos2r/unmapped_job/
ls
ls > currcontents.txt 
diff currcontents.txt contents.txt 
#0(qbc2 ; mjfos2r ; root ; bash -c rsync --server -r . /work/mjfos2r/unmapped_job/ ; sshd: mjfos2r@notty ; ; 09-Jul-2022 19:42 ; 96.71.149.245)
ls > currcontents.txt 
diff currcontents.txt contents.txt 
#0(qbc1 ; mjfos2r ; root ; bash -c rsync --server -vr . /work/mjfos2r/unmapped_job/ ; sshd: mjfos2r@notty ; ; 09-Jul-2022 19:43 ; 96.71.149.245)
diff contents.txt currcontents.txt 
diff currcontents.txt contents.txt 
ls > currcontents.txt 
diff currcontents.txt contents.txt 
ls
ls -R
tree
w
who
w
sinfo
squeue
ls
ls trimmed.TR17_CKDL210019355-1a-AK1929_HGV5WBBXX_L3_1.fq.gz.quant/
ls trimmed.TR17_CKDL210019355-1a-AK1929_HGV5WBBXX_L3_1.fq.gz.quant/aux_info/
cd ..
ls
cd unmapped_job/
ls
ls | wc
cat pathnames.txt |less
rm pathnames.txt 
ls |wc
vim
vimtutor
ls
mv tutor ~/
ls
ls -1
ls > currcontents.txt 
diff currcontents.txt contents.txt 
ls > currcontents.txt 
diff currcontents.txt contents.txt 
diff currcontents.txt contents.txt
rm contents.txt 
rm currcontents.txt 
ls -1
cd ~
ls
cd unmapped_extraction_job/
ls
ls 
ls
vi
emacs
ls
cd ..
ls
tree
tcsh
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-09 21:22 . 109131 (96.71.149.245) ; 09-Jul-2022 21:22 ; 96.71.149.245)
ls
cd unmapped_extraction_job/
ls
vim extractTranscripts-job.sh 
sbatch extractTranscripts-job.sh
ls
cat slurm-260161.out 
vim extractTranscripts-job.sh 
chmod +x extract_unmapped_transcripts.sh 
chmod +x multiSymlink.sh 
mkdir slurm_reps
mv slurm-260161.out slurm_
ls
mv slurm_ slurm_reps/
ls
chmod 
chmod +x extractTranscripts-job.sh 
sbatch extractTranscripts-job.sh 
ls
cat slurm-260162.out 
ls
vim extractTranscripts-job.sh 
chmod 755 extract_unmapped_transcripts.sh 
chmod 755 multiSymlink.sh 
mv slurm- slurm_reps/
mv slurm-260162.out slurm_reps/
ls
sbatch extractTranscripts-job.sh
watch squeue -u mjfos2r
ls
cat slurm-260163.out 
ls /work/mjfos2r/unmapped_job/
vim extract_unmapped_transcripts.sh 
sbatch extractTranscripts-job.sh 
ls
cat slurm-260164.out 
ls
l
ls -l
cat multiSymlink.sh 
ls
mv multiSymlink.sh link_fastq.sh
ls
vim extractTranscripts-job.sh 
vim extract_unmapped_transcripts.sh 
mv slurm-26016* slurm_reps/
ls
sbatch extractTranscripts-job.sh
ls
cat slurm-260165.out 
vim link_fastq.sh 
sbatch extractTranscripts-job.sh
ls
cat slurm-260166.out 
vim extract_unmapped_transcripts.sh 
mv slurm-* slurm_reps/
ls
sbatch extractTranscripts-job.sh 
ls
cat slurm-260167.out 
vim extract_unmapped_transcripts.sh 
ls
mv slurm-260167.out slurm_reps/
sbatch extractTranscripts-job.sh
ls
cat slurm-260168.out 
ls /work/mjfos2r/unmapped_job/trimmed.TR30_CKDL210019355-1a-AK2183_HGV5WBBXX_L3_1.fq.gz.quant/aux_info/
vim extract_unmapped_transcripts.sh 
mv slurm-* slurm_
ls
mv slurm_ slurm_reps/
ls
sbatch extractTranscripts-job.sh 
ls
squeue -u mjfos2r
watch squeue -u mjfos2r
ls
watch squeue -u mjfos2r
cag slurm-260169.out 
cat slurm-260169.out 
ls
watch squeue -u mjfos2r
cat slurm-260169.out 
vim extractTranscripts-job.sh 
parallel
xargs
#dammit
#I'll get those transcripts extracted somehow.
vim extractTranscripts-job.sh 
sbatch extractTranscripts-job.sh 
ls
cat slurm-260170.out 
ls
cat slurm-260170.out 
squeue -u mjfos2r
scancel 260170
lw
ls
mv slurm-* slurm_reps/
ls
module avail 
ls /bin/
ls /bin/ | grep "seq
"
ls /bin/ | grep "seqkit"
module load samtools
ls
module avail | grep sam
module load samtools/1.10/intel-19.0.5
module list
samtools
samtools fqidx --help
module -help
man module
module unload samtools/1.10/intel-19.0.5
module list
module avail
module info fastx-toolkit/0.0.14/gcc-9.3.0
module load fastx-toolkit/0.0.14/gcc-9.3.0
fastx-toolkit
fastx
module unload fastx-toolkit/0.0.14/gcc-9.3.0
module list
module unload 4
module list
module unload libgtextutils/0.7/gcc-9.3.0 
module unload gcc/9.3.0
module list
ls /bin/ | grep ag
ls /bin/ | grep ack
seqtk
module avail 
module load git
make
vim extract
vim extractTranscripts-job.sh 
cd /work/mjfos2r/
ls
w
git clone https://github.com/lh3/seqtk.git
ls
cd seqtk/
ls
cat Makefile
module load gcc
module list
cd ..
cd ~
vim makeSeqTk.sh
cp scripts/hello-slurm.sh 
cp scripts/hello-slurm.sh .
ls
vim hello-slurm.sh 
module avail | gcc
module avail | grep gcc
gcc/9.3.0
vim hello-slurm.sh 
sbatch make.sh
squeue -u mjfos2r
ls
cat slurm-260174.out 
cd /work/mjfos2r/seqtk/
ls
file seqtk
seqtk
./seqtk 
ls
cd ~
ls
vim unmapped_extraction_job/
cd unmapped_extraction_job/
vim extract_unmapped_transcripts.sh 
sbatch extractTranscripts-job.sh
ls
cat slurm-260186.out 
ls
cat slurm-260186.out 
ls
vim extract_unmapped_transcripts.sh 
cd /work/mjfos2r/unmapped_job/
ls
cat *.unmapped.fq
rm *.unmapped.fq
ls
cd ..
cd unmapped_job/
cd trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant/
ls
l
ls -l
cd ..
ls
cd ~
cd unmapped_extraction_job/
ls
mv slurm-260186.out slurm_reps/
ls
sbatch extractTranscripts-job.sh 
ls
cat slurm-260187.out 
cat link_fastq.sh 
vim link_fastq.sh 
ls
mv slurm-* slurm_reps/
ls
sbatch extractTranscripts-job.sh
ls
cat slurm-260188.out 
ls /work/mjfos2r/unmapped_job/
cd /work/mjfos2r/unmapped_job/trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant/
ls
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq
ls
cd ..
rm */*.fq
ls
ls trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant/
cd ..
ls
cd unmapped_job/
ls
rm extract_unmapped_transcripts.sh 
cd ..
ls
cd fastq/
ls
rm multiSymlink.sh 
rm link_fastq.sh 
rm extract_unmapped_transcripts.sh 
ls
cd ..
cd ~
ls
cd unmapped_extraction_job/
ls
sbatch extractTranscripts-job.sh 
ls
cat slurm-260189.out 
ls
ls slurm-260189.out 
cat slurm-260189.out 
squeue -u mjfos2r
watch squeue -u mjfos2r
cat slurm-260189.out 
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/3 ; mjfos2r pts/3 2022-07-09 23:42 . 189296 (38.108.51.12) ; 09-Jul-2022 23:42 ; 38.108.51.12)
ls
cd unmapped_extraction_job/
ls
squeue -u mjfos2r
ls
cat slurm-260189.out 
cd /work/mjfos2r/unmapped_job/
ls
cd trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant/
ls
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq 
w
cd ~
ls
vim moveUnmappeds.sh
parallel
module load parallel
parallel
man parallel_tutorial
#I'm too tired for this.
#I'll figure out parallel tomorrow.
#at least seqtk worked.
#now for blast.
#and probably to rerun but with more cores.
:q
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/0 ; mjfos2r pts/0 2022-07-09 23:56 . 58537 (38.108.51.12) ; 09-Jul-2022 23:56 ; 38.108.51.12)
module avail
module load blast
blast
module info blast
module --help
module whatis blast
BLAST
module blast
blast
ls
cp hello-slurm.sh blast
vim blast 
cp unmapped_extraction_job/extractTranscripts-job.sh blast
ls
vim blast 
ls
mv slurm-260174.out slurm_reports/
sbatch fq2fa.sh 
ls
cat slurm-260204.out 
mkdir /work/mjfos2r/blast_job
mkdir /work/mjfos2r/blast_job/unmapped
mv slurm-260204.out slurm_reports/
ls
sbatch fq2fa.sh
vim fq2fa.sh 
module list
module load parallel
module list
vim fq2fa.sh 
ls
mv slurm-* slurm_reports/
sbatch fq2fa.sh 
ls
cat slurm-260206.out 
squeue -u mjfos2r
scancel 260205
ls
cd slurm_reports/
ls
cat slurm-260205.out 
cd ..
ls
cat slurm-260206.out 
squeue -u mjfos2r
ls
cat slurm-260206.out 
vim fq2fa.sh 
squeue -u mjfos2r
scancel 260206
mv slurm-260206.out slurm_reports/
ls
sbatch fq2fa.sh
ls
squeue -u mjfos2r
ls
cat slurm
cat slurm-260207.out 
vim fq2fa.sh 
mv slurm-260207.out slurm_reports/
sbatch fq2fa.sh 
ls
cat slurm-260208.out 
squeue
ls
cat slurm-260208.out 
ls
cat slurm-260208.out 
vim fq2fa.sh 
squeue
ls
cat slurm-260208.out 
vim fq2fa.sh 
sbatch fq2fa.sh 
ls
cat slurm-260209.out 
vim fq2fa.sh 
sbatch fq2fa.sh 
ls
cat slurm-260210.out 
find
vim fq2fa.sh 
sbatch fq2fa.sh 
ls
cat slurm-260211.out 
vim fq2fa.sh 
sbatch fq2fa.sh 
ls
cat slurm-260212.out 
ls
cat
#i give up for tonight
:wq
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/19 ; mjfos2r pts/19 2022-07-11 10:44 . 273357 (76.165.48.2) ; 11-Jul-2022 10:44 ; 76.165.48.2)
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/2 ; mjfos2r pts/2 2022-07-11 10:52 . 131338 (76.165.48.2) ; 11-Jul-2022 10:52 ; 76.165.48.2)
ls
ls -a 
vim make-db.sh
vim make-db.sh
module avail | grep "blast"
vim make-db.sh
module load blast/2.10.1/gcc-9.3.0
blastdb
sbatch make-db.sh
ls
cat allocation.txt 
vim make-db.sh 
sbatch make-db.sh
sinfo
w
sinfo -s 
vim make-db.sh 
sbatch make-db.sh
ls
squeue -u mjfos2r
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/23 ; mjfos2r pts/23 2022-07-11 11:04 . 197942 (76.165.48.2) ; 11-Jul-2022 11:04 ; 76.165.48.2)
cd /work/mjfos2r/
ls
rm *.unmapped.fa
ls
cd unmapped_job/
ls
ls */
mkdir unmapped_fq
mv */*.unmapped.fq unmapped_fq/
ls
ls unmapped_fq/
cd ..
ls
cd ..
cd ~
ls
vim fq2fa.sh 
sbatch fq2fa.sh
cat slurm-260459.out 
vim fq2fa.sh 
sbatch fq2fa.sh
cat slurm-260461.out 
vim fq2fa.sh 
sbatch fq2fa.sh
ls
cat slurm-260463.out
cd /work/mjfos2r/unmapped_job/unmapped_fq/
rm *.unmapped.fa
ls
cd ~
ls
vim fq2fa.sh 
ls
mv slurm-2602* slurm_reports/
ls
mv slurm-260459.out slurm_reports/
mv slurm-26046* slurm_reports/
ls
sbatch fq2fa.sh
ls
cat slurm-260464.out 
vim recompfasta.sh
cat fq2fa.sh 
vim recompfastq
vim recompfastq 
sbatch recompfastq
ls /work/mjfos2r/unmapped_job/unmapped_fq/
cd $_
ls
rm *.unmapped.fq
ls
scancel 260466
#GDIT
ls
rm *.unmapped.fa
ls
cd ..
cd ~
ls
cd unmapped_extraction_job/
ls
vim extractTranscripts-job.sh 
vim link_fastq.sh 
watch squeue -u mjfos2r
module list | grep "parallel"
module avail | grep "parallel"
vim extractTranscripts-job.sh 
vim extract_unmapped_transcripts.sh 
ls
mv slurm-26018* slurm_reps/
sbatch extractTranscripts-job.sh
ls
cat slurm-260472.out 
ls
cat slurm-260472.out 
scancel 260472
ls
mv slurm-* slurm_reps/
ls
vim extractTranscripts-job.sh 
sbatch extractTranscripts-job.sh
ls
cat slurm-260473.out
scancel 260473
ls
mv slurm-260473.out slurm_reps/
ls
vim extract_unmapped_transcripts.sh 
vim link_fastq.sh 
sbatch extractTranscripts-job.sh
ls
cat slurm-260474.out 
ls
cd /work/mjfos2r/
ls
rm *.unmapped.fa
cd unmapped_job/
ls
ls */
ls
cd ..
ls
ls nr
ls
ls blast_job/
ls blast_job/unmapped/
scancel 260474
ls
cd ~
cd unmapped_extraction_job/
ls
cat slurm-260474.out 
cd ..
ls
vim recompfastq 
ls /work/mjfos2r/blast_job/
vim recompfastq 
sbatch recompfastq
ls
cat slurm-260476.out 
clear
ls
ls /work/mjfos2r/blast_job/unmapped/
watch ls /work/mjfos2r/blast_job/unmapped/
ls
vim recompfastq 
scancel 260476
vim recompfastq 
ls
mv slurm-26046* slurm_reports/
ls
mv slurm-260476.out slurm_reports/
ls
mkdir blast_job
mv recompfastq blast_job/
cd blast_job/
ls
sbatch recompfastq
ls
cat slurm-260484.out 
vim recompfastq 
cd /work/mjfos2r/blast_job/unmapped/
ls
rm {}.gz
ls
rm {}.unmapped.fa
ls
cd ~
cd blast_job/
ls
mkdir slime
mv slurm-260484.out slime/
ls
sbatch recompfastq
ls
cd /work/mjfos2r/blast_job/unmapped/
ls
l
ls -l
ls
cd -
ls
cat slurm-260485.out-qbc102 
ls
cat slurm-260485.err-qbc102 
cat slurm-260485.out-qbc102 
ls /work/mjfos2r/blast_job/unmapped/
scancel 260485
ls
mv slurm-260485.* slime/
vim recompfastq 
sbatch recompfastq 
ls
cat slurm-260488.out-qbc102 
ls /work/mjfos2r/blast_job/unmapped/
cd $_
ls
rm {}.gz
ls
scancel 260488
cd ~
l
ls
cd blast_job/
ls
mv slurm-260488.* slime/
vim recompfastq 
sbatch recompfastq 
ls /work/mjfos2r/blast_job/unmapped/
watch ls /work/mjfos2r/blast_job/unmapped/
ls /work/mjfos2r/blast_job/unmapped/
ls /work/mjfos2r/blast_job/unmapped/ | grep unmapped.fq.gz
watch ls /work/mjfos2r/blast_job/unmapped/ | grep unmapped.fq.gz
ls /work/mjfos2r/blast_job/unmapped/ | grep unmapped.fq.gz
ls /work/mjfos2r/blast_job/unmapped/
ls
ls /work/mjfos2r/blast_job/unmapped/
ls /work/mjfos2r/blast_job/unmapped/ | grep unmapped.fq.gz
vim recompfastq 
ls /work/mjfos2r/blast_job/unmapped/ | grep unmapped.fq.gz
scancel 260489
sbatch recompfastq 
ls /work/mjfos2r/blast_job/unmapped/ | grep unmapped.fq.gz
ls /work/mjfos2r/blast_job/
ls /work/mjfos2r/blast_job/unmapped/
cd $_
ls
ls -1
ls -l -1
cd ~
ls
cd blast_job/
vim recompfastq 
scancel 260492
cd /work/mjfos2r/blast_job/unmapped/
ls
rm {}.gz
ls
cd ~
cd blast_job/
ls
sbatch recompfastq 
ls
cat slurm-260493.out-qbc011 
ls /work/mjfos2r/blast_job/unmapped/
scancel 260493
vim recompfastq 
sbatch recompfastq 
cat slurm-260493.out-qbc011 
ls
ls slurm-260494.out-qbc011 
cat slurm-260494.out-qbc011 
mv ../fq2fa.sh .
ls
mv slurm-2604* slime/
ls
vim fq2fa.sh 
sbatch fq2fa.sh 
scancel 260497
ls
vim fq2fa.sh 
sbatch fq2fa.sh 
vim fq2fa.sh 
ls
cat slurm-260498.out-qbc011 
vim fq2fa.sh 
sbatch fq2fa.sh 
ls
cat slurm-260499.out-qbc011 
vim fq2fa.sh 
sbatch fq2fa.sh 
ls
cat slurm-260500.
cat slurm-260500.out-qbc011 
vim fq2fa.sh 
sbatch fq2fa.sh 
cd ..
ls
cat slurm-260457.out-qbc033 
ls
mv slurm-260457.* blast_job/slime/
ls
ls /work/mjfos2r/blast_job/unmapped/
cd blast_job/
ls
cat slurm-260501.out-qbc011 
watch squeue -u mjfos2r
cd /work/mjfos2r/blast_job/
ls
mkdir unmap_fa
vim fq2fa.sh 
sbatch fq2fa.sh 
ls /work/mjfos2r/blast_job/unmap_fa/
ls
ls /work/mjfos2r/blast_job/unmap_fa/
ls
ls /work/mjfos2r/blast_job/unmap_fa/
ls
cat slurm-260502.out-qbc011 
vim fq2fa.sh 
sbatch fq2fa.sh 
cd /work/mjfos2r/blast_job/
ls
cd unmap
cd unmapped/
ls
cd ..
cd unmap_fa/
ls
cd ~
cd blast_job/
ls
cat slurm-260502.out-qbc011 
vim fq2fa.sh 
sbatch fq2fa.sh 
ls /work/mjfos2r/blast_job/
ls /work/mjfos2r/blast_job/unmap_fa/
ls /work/mjfos2r/blast_job/
ls /work/mjfos2r/blast_job/unmapped/
cat slurm-260507.out-qbc033 
vim fq2fa.sh 
ls /work/mjfos2r/unmapped_job/unmapped_fq/
vim fq2fa.sh 
sbatch fq2fa.sh 
squeue -u mjfos2r
watch squeue -u mjfos2r
ls /work/mjfos2r/unmapped_job/unmapped_fq/
ls /work/mjfos2r/blast_job/unmap_fa/
ls
mv slurm-260* slime/
ls
mv ../blast .
module avail | grep blast
ls
ls unmap_fa/
module load blast/2.10.1/gcc-9.3.0
ls
blastx
man blastx
man blast
man BLAST+
vim blast 
sbatch blast 
scancel 260509
ls
cd ~
ls
head make-db.sh 
vim blast
sbatch blast
vim blast
sbatch blast
squeue -u mjfos2r
watch squeue -u mjfos2r
ls
cat slurm-260510.out-qbc011 
ls
cd /work/mjfos2r/blast_job/unmap_fa/
ls
cat blast_job/blast 
blastx
module load #SBATCH --mail-user mfo010@email.latech.edu
#SBATCH --mail-type ALL
ls
module load blast
blastx
cd ..
ls
vim $_
cd blast_job/
ls
cat slurm-260510.err-qbc011 
vim blast 
sbatch blast 
ls
cat slurm-260512.out-qbc011 
cd /work/mjfos2r/blast_job/unmap_fa/
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
cd ~/blast_job/
ls
scancel 260512
ls
mv slurm-26051* slime/
ls
vim blast 
sbatch blast 
ls
ls slurm-260515.out-qbc011 
cat slurm-260515.out-qbc011 
cat slurm-260515.err-qbc011 
ls
watch squeue -u mjfos2r
cd /work/mjfos2r/blast_job/unmap_fa/
;s
ls ../../nr
vim blast 
cd ~
cd blast_job/
ls
mv slurm-260515.* slime/
ls
sbatch blast 
sbatch blast watch squeue -u mjfos2r
watch squeue -u mjfos2r
ls
cat slurm-260516.err-qbc011 
vim blast 
sbatch blast 
ls
cat slurm-260519.err-qbc011 
cat slurm-260519.out-qbc011 
ls
cd /work/mjfos2r/blast_job/
ls
cd unmap_fa/
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
blastx --hlep
blastx -help
ls blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
cat $_
cat blastx.trimmed.TR*
cd..
cd ..
ls
cd unmapped
ls
cat blastx.trimmed.TR*
ls
cd ..
ls
cd unmap_fa/
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
ls
cd ..
ls
cd unmap_fa/
ls
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa
ls
lls
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
cd ~/blast_job/
ls
cat slurm-260519.err-qbc011 
cat slurm-260519.out-qbc011 
ls
cd /work/mjfos2r/
ls -lh
cd nr/
ls -lh
ls
cd ..
ls
cd trinity/
ls
mv slurm-2* slurm_reports/
mv slurm_reports/ slime/
ls
cat trinity-job.sh 
vim trinity-job.sh 
sbatch trinity-job.sh 
vim trinity-job.sh 
sbatch trinity-job.sh 
ls
cat slurm-260536.err-qbc082 
cat slurm-260536.out-qbc082 
ls
mv slurm-260536.* slime/
ls
cd ..
ls 
cd blast_job/
ls
cd ..
ls
cd ~
ls
cd blast_job/
ls
cat slurm-260519.out-qbc011 
cat slurm-260519.err-qbc011 
ls
cd ..
ls 
cd trinity/
ls
cd ..
cd slurm_reports/
ls
cat slurm-260205.out 
cd ..
ls
cd slurm_reports/trinity_job/
ls
cat slurm-260076.out
module avail
ls
cd ..
ls
cd trinity/
ls
vim trinity-job.sh
sbatch trinity-job.sh
vim trinity-job.sh
sbatch trinity-job.sh
ls
cat slurm-260537.err-qbc102 
cat slurm-260537.out-qbc102 
cd ..
cd /work/mjfos2r/
ls
cd fastq/
ls
cat *.fq > alltranscripts.fq
;s
ls
rm alltranscripts.fq 
cd ..
cd ~
cd trinity/
ls
vim combinealltranscripts
cp trinity-job.sh 
cp trinity-job.sh combinefastq
vim combinefastq 
sbatch combinefastq 
ls
cat slurm-260538.out-qbc102 
cd /work/mjfos2r/
ls
cd fastq/
ls
cd ..
cd ~
ls
cd trinity/
ls
vim combinefastq 
sbatch combinefastq 
ls
sl
ls
sl
ls
module load bowtie2
bowtie --help
module avail | grep bowtie
module load bowtie2/2.3.5.1/gcc-9.3.0
bowtie --help
bowtie2 --help
cd ..
mkdir bowtie2
cd $_
cp ../trinity/trinity-job.sh bowtie2
ls
bowtie2-build --help
bowtie2
module load bowtie2/2.3.5.1/gcc-9.3.0
bowtie2-build -help
cd ..
ls
cd trinity/
ls
cat trinity-job.sh 
#0(qbc1 ; mjfos2r ; root ; bash -c /usr/libexec/openssh/sftp-server ; sshd: mjfos2r@notty ; ; 11-Jul-2022 14:34 ; 76.165.48.2)
vim bowtie2 
mv bowtie2 bowtie2_index
sbatch bowtie2_index
ls
pwd
ls -lh
ls bowtie2_index 
ls -R bowtie2_index 
ls
mv *.bt2l bowtie2_index/
ls
file bowtie2_index 
mkdir /work/mjfos2r/bowtie2
mkdir /work/mjfos2r/bowtie2/index
mv *.bt2l $_
ls
ls /work/mjfos2r/bowtie2/index/
ls
cat slurm-260540.out-qbc102 
ls
mkdir slime
mv slurm-260540.* slime/
ls
cp bowtie2_index bowtie2_run
watch squeue -u mjfos2r
cd /work/mjfos2r/
ls
cd fastq/
ls
bowtie2 -help
vim $_
sbatch bowtie2_run
ls
cat slurm-260583.err-qbc102 
watch squeue -u mjfos2r
ls
cd ~
ls
cd bowtie2/
ls
cat slurm-260583.out-qbc102 
cat slurm-260583.err-qbc102 
vim bowtie2_run
vim bowtie2_run 
sbatch bowtie2_run
ls
ls slurm-260586.err-qbc102 
cat slurm-260586.out-qbc102
ls
mv slurm-26058* slime/
ls
cat bowtie2_run 
sbatch bowtie2_run
ls
cat slurm-260587.err-qbc102 
vim bowtie2_run 
sbatch bowtie2_run 
ls
cat slurm-260588.out-qbc102 
cat slurm-260588.err-qbc102 
ls /work/mjfos2r/bowtie2/index/
vim bowtie2_run 
mv slurm* slime/
ls
sbatch bowtie2_run 
ls
ls slurm-260589.out-qbc102 
cat /work/mjfos2r/blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out
head $_
head -n 200 $_
head -n 200 $_ | less
cat /work/mjfos2r/blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep ">"
cat /work/mjfos2r/blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "stress"
ls
cat slurm-260589.out-qbc102 
cat slurm-260589.err-qbc102 
ls /work/mjfos2r/bowtie2/
ls -lh /work/mjfos2r/bowtie2/
vim bowtie2_run 
sbatch bowtie2_run
ls -lh /work/mjfos2r/bowtie2/
sbatch bowtie2_run
scancel 260634
ls -lh /work/mjfos2r/bowtie2/
scancel 260597
ls
mv slurm-260* slime/
vim bowtie2_run 
ls
sbatch bowtie2_run
ls -lh /work/mjfos2r/bowtie2/
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/33 ; mjfos2r pts/33 2022-07-11 15:43 . 1368 (76.165.48.2) ; 11-Jul-2022 15:43 ; 76.165.48.2)
cd bowtie2/
ls
cat slurm-260635.out-qbc072 
ls
cd /work/mjfos2r/blast_job/
ls
cd unmap_fa/
ls
ls -lh
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep ">" | less
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | less
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | sed -n -e '/Sequences producing significant alignments:/,/>/ p'
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep -A 10 'Sequences producing significant alignments:'
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep -A 10 'Sequences producing significant alignments:' | less
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "stress"
watch squeue -u mjfos2r
exit
watch ls -lh /work/mjfos2r/bowtie2/
exit
:q
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/2 ; mjfos2r pts/2 2022-07-11 17:09 . 185141 (38.108.51.12) ; 11-Jul-2022 17:09 ; 38.108.51.12)
sinfo
ls
cd bowtie2/
ls
cat slurm-260635.out-qbc072
cat slurm-260635.err-qbc072
cd /work/mjfos2r/
ls
cd bowtie2/
ls
ls -lh
salloc
file core.27596
cd ..
ls
cd fastq/
ls
cd ..
ls
cd tri
cd trifolium_repens/
ls
cd ..
cd unmapped_job/
ls
cd ..
ls
cd blast_job/
ls
cd unmap_fa/
ls
ls -lh
squeue
ls
sinfo
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | wc
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa | wc
cd ..
ls
cd ..
ls
cd fastq/
ls
cd ..
ls
cd fastq/
ls
cat alltranscripts.fq 
cat alltranscripts.fq | wc
ls
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-11 18:02 . 144838 (38.108.51.12) ; 11-Jul-2022 18:02 ; 38.108.51.12)
squeue -u mjfos2r
squeue
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/2 ; mjfos2r pts/2 2022-07-11 23:06 . 33079 (38.108.51.12) ; 11-Jul-2022 23:06 ; 38.108.51.12)
squeue -u mjfos2r
ls -lh /work/mjfos2r/blast_job/unmap_fa/
:wq
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/35 ; mjfos2r pts/35 2022-07-12 10:50 . 205171 (76.165.48.2) ; 12-Jul-2022 10:50 ; 76.165.48.2)
squeue -u mjfos2r
ls
ls /work/mjfos2r/blast_job/unmap_fa/
ls -lh $_
ls -lh /work/mjfos2r/bowtie2/
ls
module avail
module avail | grep "star"
module info trinity
module --help
module whatis trinity
module load trinity/2.8.6/intel-19.0.5
trinity
Trinity
cd  /home/packages/trinity/2.8.6/intel-19.0.5/sample_data/test_Trinity_Assembly/
ls
cat readme
cat README
cd ..
ls
cd third_party/
ls
cat jellyfish-2.2.7
cd jellyfish-2.2.7/
l
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd mjfos2r/
ls
cd trinity/
ls
cat trinity-job.sh 
#0(qbc2 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [260867.0] ; ; 12-Jul-2022 11:07 ; 76.165.48.2)
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/33 ; mjfos2r pts/33 2022-07-12 11:07 . 226825 (76.165.48.2) ; 12-Jul-2022 11:07 ; 76.165.48.2)
squeue -u mjfos2r
sinfo
module lst
module list
Trinity
cd /work/mjfos2r/
ls
cd trinity/
ls
cd ..
cd fastq/
ls
cat alltranscripts.fq | wc
wc alltranscripts.fq 
wc --help
wc -l alltranscripts.fq 
ls
ls -lh
cd ..
ls
cd bowtie2/
ls
cat transcripts.sam | wc
cd ..
cd fastq/
ls
cat alltranscripts.fq 
#149gb holys
exit 0
srun -t 1:00:00 -n8 -N1 -A loni_pgtrain3 -p single --pty /bin/bash
scontrol
ls
cd ..
ls
lslsls
ls
lslsls
ls
clear
 module avail
module load spades
module load spades/3.13.0/gcc-9.3.0  
module list
module load hmmer
module list
module load r
module load busco
hmmer
spades.py
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/17 ; mjfos2r pts/17 2022-07-12 11:40 . 276503 (76.165.48.2) ; 12-Jul-2022 11:40 ; 76.165.48.2)
l
ls
cp hello-slurm.sh 
cp hello-slurm.sh spades
vim spades 
cat spades 
mkdir /work/mjfos2r/spades_out
ls /work/mjfos2r/
mkdir spades
mkdir spades_job
ls
mv spades spades_job/
cd spades_job/
ls
vim spades 
sbatch spades
scancel 260875
vim spades 
sbatch spades
cat
ls
clear
ls
cat slurm-260876.err-qbc105 
cat slurm-260876.out-qbc105 
watch cat slurm-260876.out-qbc105 
tail watch cat slurm-260876.out-qbc105 
tail slurm-260876.out-qbc105 
watch cat /work/mjfos2r/spades_out/spades.log
ls
clear
ls
mv make.sh scripts/
mv moveUnmappeds.sh scripts/
mv make-db.sh blast_job/
ls
rm tutor
ls
head hello-slurm.sh 
mv hello-slurm.sh 
mv hello-slurm.sh  scripts/
ls
ls -R -lh
dh
du
du -h
#cool
#nowhere near that 10g
cd /work/mjfos2r/
ls
du -h
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 12:08 . 40699 (76.165.48.2) ; 12-Jul-2022 12:08 ; 76.165.48.2)
ls
sinfo
ls
cd /work/mjfos2r/
ls
cd ..
du -h
#SORRY
cd mjfos2r/
du -h
ls
cd unmapped_job/
ls
ls -R
rm -rf unmapped_fq/
ls
du -h
ls
cd ..
rm -rf unmapped_job/
ls
cd blast_job/
ls
du -h
cd ..
cd bowtie2/
du -h
cd ..
ls
module avail
#0(qbc2 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [260881.0] ; ; 12-Jul-2022 12:15 ; 76.165.48.2)
module list
module load samtools
module list
samtools
samtools stats -h
samtools -h
samtools
samtools view -h
cd bowtie2/
ls
exit 0
srun --nodes=1 --ntasks=8 -A loni_pgtrain3 --partition=single --pty /bin/bash
ls
cat bowtie2/bowtie2_run
cd /work/mjfos2r/bowtie2/
ls
vim sam2bam.sh
vim sam2bam.sh 
sbatch sam2bam.sh 
cd /work/mjfos2r/
cd blast_job/
ls
cd unmap
cd unmap_fa/
du
du -h
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep -A 10 "Sequences producing significant alignments: "
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep -A 10 "Stress"
ls
du -lh
cd ..
ls
du -lh
cd unmap
cd unmap_fa/
ls
ls -lh
cd ..
cd fastq/
.ls
ls
ls -lh
exit
pwd
#0(qbc2 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [260892.0] ; ; 12-Jul-2022 12:40 ; 76.165.48.2)
samtools stats 
module load samtools
samtools stats transcripts.bam
exit 0
srun --pty /bin/bash
du
du -h
ls -lh
#0(qbc2 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [260893.0] ; ; 12-Jul-2022 12:41 ; 76.165.48.2)
ls
module load samtools
samtools
samtools stats transcripts.bam
samtools stats -h
samtools stats --threads 48 -r ../trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna transcripts.bam
plot-bamstats -h
ls
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/15 ; mjfos2r pts/15 2022-07-12 12:52 . 114533 (76.165.48.2) ; 12-Jul-2022 12:52 ; 76.165.48.2)
module load samtools
samtools mpileup -h
ls
cd /work/mjfos2r/
ls
ls -lh fastq/
ls -lh blast_job/unmap_fa/
cd ..
cd mjfos2r/
eu -h
du -h
cd blast_job/unmap_fa/
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out |wc
samtools stats --threads 48 -r ../trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna transcripts.bam | >bamstats.bam.bc
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep ">"
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "ribosome"
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "cyanide"
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep 
grep --help
c
lk
kj
asdf
SAAs
ssSas
dsd
d
du
lw
le
ls
cd ~
ls
cd blast_job/
ls
cat slurm-260519.err-qbc011 
cat slurm-260519.out-qbc011 
plot-bamstats bamstats.bam.bc
plot-bamstats bamstats.bam.bc -p /output/
plot-bamstats bamstats.bam.bc -p /
plot-bamstats bamstats.bam.bc -p output/
samtools stats -h
samtools stats -r ../trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna | plot-bamstats -p out/
samtools stats -r ../trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna transcripts.bam | plot-bamstats -p out/
samtools stats
watch tail /work/mjfos2r/spades_out/spades.log 
ls
cat slurm-260876.err-qbc105 
cat slurm-260876.out-qbc105 
ls /work/mjfos2r/spades_out/
ls -lh /work/mjfos2r/spades_out/
cd /work/mjfos2r/spades_out/
ls
ls configs/
ls corrected/
ls -lh corrected/
watch ls -lh corrected/
ls
cat spades.log 
cat params.txt 
cd ~/spades_job/
ls
vim spades 
cat slurm-260876.out-qbc105 
samtools stats -r ../trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna --threads 48 transcripts.bam > transcripts.bam.bc
ls
cd /work/mjfos2r/blast_job/unmap_fa/
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
watch tail blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
sinfo 
scontrol
plot-bamstats transcripts.bam.bc
plot-bamstats -p out/ transcripts.bam.bc
mkdir out
ls
cd out
ls
cd ..
plot-bamstats -p out/ transcripts.bam.bc
gnuplot
module load gnuplot
plot-bamstats -p out/ transcripts.bam.bc
cd out
ls
exit 0
srun -N 1 -n 48 -A loni_pgtrain3 --pty /bin/bash
ls
#0(qbc2 ; mjfos2r ; root ; bash -c /usr/libexec/openssh/sftp-server ; sshd: mjfos2r@notty ; ; 12-Jul-2022 13:37 ; 76.165.48.2)
exit
exit
watch tail slurm-260876.out-qbc105 
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 13:42 . 210151 (76.165.48.2) ; 12-Jul-2022 13:42 ; 76.165.48.2)
cd spades_job/
ls
watch cat slurm-260876.out-qbc105 
cat slurm-260876.out-qbc105 
tail -h
tail --help
tail -n 20 slurm-260876.out-qbc105 
watch tail -n 20 slurm-260876.out-qbc105 
cd /work/mjfos2r/
ls
cd spades_out/
ls
du -j
ls -lh
cd corrected/
ls -lh
cd .
cd ..
ls
cat transcripts.fasta 
ls
cat params.txt 
cat transcripts.paths 
ls
cat before_rr.fasta 
ls
ls -
ls -R -lh
watch squeue -u mjfos2r
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/15 ; mjfos2r pts/15 2022-07-12 14:53 . 75467 (76.165.48.2) ; 12-Jul-2022 14:53 ; 76.165.48.2)
cd /work/mjfos2r/spades_out/
ls
cat hard_filtered_transcripts.fasta | grep ">"
cat soft_filtered_transcripts.fasta | grep ">" | wc
cat hard_filtered_transcripts.fasta | grep ">" | wc
cat transcripts.fasta | grep ">" | wc
cd corrected/
ls
cd configs/
ls
cat config.info 
cd ..
ls
cd ..
ls
cd tmp/
ls
cd ..
cat spades.log 
zzz
busco
BUSCO
rnaquast.py
pr
py
python3
ls
llll
ls
conda
module list
module load spades
ls
srun -N 1 -t 24:00:00 -A loni_pgtrain3 -pty /bin/bash
srun -N 1 -t 24:00:00 -A loni_pgtrain3 -p single -pty /bin/bash
srun -N 1 -t 24:00:00 -A loni_pgtrain3 -p single -tty /bin/bash
srun -N 1 -A loni_pgtrain3 -p single -tty /bin/bash
srun -N 1 -A loni_pgtrain3 -p single --time 24:00:00 -tty /bin/bash
#0(qbc2 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [260943.0] ; ; 12-Jul-2022 15:02 ; 76.165.48.2)
module load blast
blastx
cd /work/mjfos2r/
export BLAST_DB=/work/mjfos2r/nr
ls
echo $BLAST_DB
cd spades_out/
blastx --help
ls
cd ~/spades_job/
ls
vim spades 
ls
cd ..
ls
cd blast_job/
ls
blastx -query hard_filtered_transcripts.fasta -db nr -out blastx.transcripts_hard_filtered.out -num_threads 48
export BLASTDB=/work/mjfos2r/nr
vim blast 
cd ..
ls
squeue
ls
cd /work/mjfos2r/blast_job/
cd ..
cd spades_out/
ls
cat blastx.transcripts_hard_filtered.out 
blastx -query hard_filtered_transcripts.fasta -db nr -out blastx.transcripts_hard_filtered.out -num_threads 48
rm blastx.transcripts_hard_filtered.out 
cd ~/
ls
cd blast_job/
mkdir blast_denovo
ls
cd blast_denovo/
ls
cp ../blast blast-denovo
blastx --help
blastx -help
vim blast-denovo 
sbatch blast-denovo 
ls
squeue -u mjfos2r
exit 0
srun -N 1 -n 48 -A loni_pgtrain3 --pty /bin/bash
exit
watch squeue -u mjfos2r
squeue
squeue -u mjfos2r
scontrol show job 260947
squeue -u mjfos2r
sinfo
squeue
sinfo
ls
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 15:18 . 125183 (76.165.48.2) ; 12-Jul-2022 15:18 ; 76.165.48.2)
squeue
squeue -u mjfos2r
scontrol show job 260947
squeue
cd /work/mjfos2r/
ls
cd spades_out/
ls
cat transcripts.fasta | wc
cat transcripts.fasta | grep ">" | wc
cat soft_filtered_transcripts.fasta | grep ">" | wc
cat hard_filtered_transcripts.fasta | grep ">" | wc
sinfo
squeue -u mjfos2r
cd ~
ls
cd blast_job/
ls
cd blast_denovo/
ls
vim blast-denovo 
sinfo
squeue 
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 15:34 . 159985 (76.165.48.2) ; 12-Jul-2022 15:34 ; 76.165.48.2)
sinfo
squeue -u mjfos2r
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 15:36 . 164387 (76.165.48.2) ; 12-Jul-2022 15:36 ; 76.165.48.2)
ls
lsls
ls
ls ls ls 
clear
sinfo
watch sinfo
ls
watch squeue -u mjfos2r
squeue -u mjfos2r
squeue
watch squeue
squeue -h
squeue -gpu
squeue --help
squeue -a
squeue --help
watch squeue -w single
watch squeue --nodelist=single
w
lsllsls
cd .vim
ls
cd ..
vim .vimrc
ls
squeue
quit
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 15:59 . 212636 (76.165.48.2) ; 12-Jul-2022 15:59 ; 76.165.48.2)
ls
squeue -u mjfos2r
#fck
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 16:04 . 223328 (76.165.48.2) ; 12-Jul-2022 16:04 ; 76.165.48.2)
cd blast_job/
ls
cd blast_denovo/
ls
#0(qbc2 ; mjfos2r ; root ; bash -c /usr/libexec/openssh/sftp-server ; sshd: mjfos2r@notty ; ; 12-Jul-2022 16:11 ; 76.165.48.2)
vim blast-denovo 
ls
cd /work/mjfos2r/
sftp mjfos2r@qb.loni.org
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 16:43 . 27024 (76.165.48.2) ; 12-Jul-2022 16:43 ; 76.165.48.2)
ls
cd blast_job/
ls
vim make-db.sh 
squeue -u mjfos2r
ls
cd ..
cd blast_job/
l
ls
tail slurm-260519.out-qbc011 
ls /work/mjfos2r/blast_job/unmap_fa/
ls -lh /work/mjfos2r/blast_job/unmap_fa/
squeue -u mjfos2r
ls
sinfo
q
sftp mjfos2r@qb.loni.org
ls
cd /work/mjfos2r/
ls
srun -A pgtrain3 -tty /bin/bash
squeue
#we need a bigger supercomputer
#pls
#pLs
#GIB 
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 17:32 . 121901 (76.165.48.2) ; 12-Jul-2022 17:32 ; 76.165.48.2)
l
sinfo
squeue
squeue -u mjfos2r
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 19:21 . 20074 (38.108.51.12) ; 12-Jul-2022 19:21 ; 38.108.51.12)
squeue
squeue -u mjfos2r
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 19:36 . 43971 (38.108.51.12) ; 12-Jul-2022 19:36 ; 38.108.51.12)
ls
squeue
scancel 260947
squeue
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 19:41 . 53702 (38.108.51.12) ; 12-Jul-2022 19:41 ; 38.108.51.12)
sftp mjfos2r@qb.loni.org
cd /work/mjfos2r
ls
cd fastq/
ls
file alltranscripts.fq 
ls -lh alltranscripts.fq 
sinfo
w
exit
#0(qbc1 ; mjfos2r ; root ; bash -c /usr/libexec/openssh/sftp-server ; sshd: mjfos2r@notty ; ; 12-Jul-2022 19:47 ; 208.100.92.22)
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-12 19:50 . 67942 (38.108.51.12) ; 12-Jul-2022 19:50 ; 38.108.51.12)
cd /work/mjfos2r/
ls
cd fastq/
ls
readlink -f alltranscripts.fq 
#0(qbc2 ; mjfos2r ; root ; bash -c rsync --server --sender -logDtpre.iLsfxC . /work/mjfos2r/fastq/alltranscripts.fq ; sshd: mjfos2r@notty ; ; 12-Jul-2022 19:51 ; 208.100.92.22)
ls
w
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/15 ; mjfos2r pts/15 2022-07-12 20:33 . 138394 (38.108.51.12) ; 12-Jul-2022 20:33 ; 38.108.51.12)
ls
cd ..
ls
cd mjfos2r/
ls
cd trinity/
lsd
ls
vim trinity-batch.sh
exiy
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/22 ; mjfos2r pts/22 2022-07-13 10:55 . 242147 (mobile-166-173-185-153.mycingular.net) ; 13-Jul-2022 10:55 ; 166.173.185.153)
#0(qbc1 ; mjfos2r ; root ; bash -c echo $SHELL exit; ; sshd: mjfos2r@pts/22 ; ; 13-Jul-2022 10:55 ; 166.173.185.153)
#0(qbc1 ; mjfos2r ; root ; bash -c HISTFILE=; SA_OS_TYPE="Linux" REAL_OS_NAME=`uname` if [ "$REAL_OS_NAME" != "$SA_OS_TYPE" ] ; then echo `uname` else DISTRIB_ID=\"`cat /etc/*release`\" echo $DISTRIB_ID; fi; exit; ; sshd: mjfos2r@pts/22 ; ; 13-Jul-2022 10:55 ; 166.173.185.153)
#0(qbc1 ; mjfos2r ; root ; bash -c cat ~/.bash_history exit; ; sshd: mjfos2r@pts/22 ; ; 13-Jul-2022 10:55 ; 166.173.185.153)
squeue -u mjfos2r
ls
cd blast_job/
ls
cat slurm-260519.out-qbc011 
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/22 ; mjfos2r pts/22 2022-07-13 11:02 . 247882 (76.165.48.2) ; 13-Jul-2022 11:02 ; 76.165.48.2)
ls
sinfo
squeue -u mjfos2r
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/36 ; mjfos2r pts/36 2022-07-13 11:07 . 252062 (76.165.48.2) ; 13-Jul-2022 11:07 ; 76.165.48.2)
squeue 
sinfo
module avail 
ls
cd /work/mjfos2r/
ls
cd blast_job/
ls
cd unmap_fa/
ls
ls -lh
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa | wc
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | less
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "query=" | wc
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep query= | wc
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep query=
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep query
ls
ls -lh
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "query="
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep ">"
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep query=
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep 'query='
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep 'query'
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out
https://academic.oup.com/bioinformatics/article/27/2/182/285951?login=true
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "1:N:0:AGATAG"
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "1:N:0:AGATAG" | wc
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa | grep ">" | wc
sinfo
ls
w
whoami
where
pwd
cd ~
ls
cd blast_job/
ls
cat blast
#NOT GONNA FINISH IN THIS LIFETIME
#GR8
ls
cat slurm-260519.out-qbc011 
cat slurm-260519.err-qbc011 
ls
exit
watch squeue -u mjfos2r
cd /work/mjfos2r/blast_job/
ls
cd unmap_fa/
ls
ls 0-lh
ls -lh
#FI
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/10 ; mjfos2r pts/10 2022-07-13 14:46 . 255270 (mobile-166-173-185-119.mycingular.net) ; 13-Jul-2022 14:46 ; 166.173.185.119)
#0(qbc2 ; mjfos2r ; root ; bash -c cat ~/.bash_history exit; ; sshd: mjfos2r@pts/10 ; ; 13-Jul-2022 14:46 ; 166.173.185.119)
#0(qbc1 ; mjfos2r ; root ; -bash ; su - mjfos2r ; fchen14 pts/39 2022-07-13 15:59 . 277434 (80-38-fb-71-69-93.wlan.lsu.edu) ; 13-Jul-2022 16:00 ; )
cd /home/mjfos2r/trinity
ls
less trinity-job.sh
vi trinity-batch.sh 
ll -latrh
less slurm-260539.err-qbc102
less slurm-260539.out-qbc102 
less slurm-260538.out-qbc102
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/2 ; mjfos2r pts/2 2022-07-13 17:56 . 18400 (mobile-166-173-185-125.mycingular.net) ; 13-Jul-2022 17:56 ; 166.173.185.125)
#0(qbc2 ; mjfos2r ; root ; bash -c cat ~/.bash_history exit; ; sshd: mjfos2r@pts/2 ; ; 13-Jul-2022 17:56 ; 166.173.185.125)
sinfo
squeue
cd /work/mjfos2r/
ls
cd blast_job/
ls
cd unmap_f
cd unmap_fa
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out 
#0(qbc1 ; mjfos2r ; root ; bash -c cat ~/.bash_history exit; ; sshd: mjfos2r@pts/37 ; ; 13-Jul-2022 18:03 ; 166.173.185.125)
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/37 ; mjfos2r pts/37 2022-07-13 18:03 . 109694 (mobile-166-173-185-125.mycingular.net) ; 13-Jul-2022 18:03 ; 166.173.185.125)
module avail
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; su - mjfos2r ; fchen14 pts/7 2022-07-14 10:13 . 273443 (crimson.its.lsu.edu) ; 14-Jul-2022 10:15 ; )
cd trinity/
ls
vi combinefastq 
vi trinity-batch.sh 
cd /work/mjfos2r/fastq
ls
du -sh .
ls
cd 
ls
pbslog 259913
cd trinity/
ls
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/31 ; mjfos2r pts/31 2022-07-14 10:51 . 219698 (76.165.48.2) ; 14-Jul-2022 10:51 ; 76.165.48.2)
qstat
squeue
ls
cd blast_job/
ls
cat slurm-260519.out-qbc011 
ls
cd ..
ls
cd /work/mjfos2r/blast_job/
ls
cd unmap_fa/\
ls
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | wc
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep ">"
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "Query=" | wc
ls
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa | grep ">" | wc
ls
l
ls
cdd ..
cd ..
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/26 ; mjfos2r pts/26 2022-07-14 11:06 . 233099 (76.165.48.2) ; 14-Jul-2022 11:06 ; 76.165.48.2)
ls
module avail
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/26 ; mjfos2r pts/26 2022-07-14 11:57 . 274846 (76.165.48.2) ; 14-Jul-2022 11:57 ; 76.165.48.2)
cd /work/mjfos2r/blast_job/
cd unmap_fa/
ls
ls -lh
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "Query=" | wc
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa | grep "Query=" | wc
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa | grep ">" | wc
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep -A 10 "Query="
cat blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep -A 10 "ribosome"
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/4 ; mjfos2r pts/4 2022-07-14 14:04 . 103005 (76.165.48.2) ; 14-Jul-2022 14:04 ; 76.165.48.2)
cd trinity/
ls
cat trinity-job.sh 
vim trinity-job.sh 
sinfo 
vim trinity-batch.sh 
vim trinity-job.sh 
sbatch trinity-job.sh
squeue -u mjfos2r
ls
watch squeue -u mjfos2r
sinfo
ls
cat slurm-261710.out-qbc036 
cat trinity-batch.sh 
vim trinity-batch.sh 
mv slurm-26* ../slurm_reports/
ls
sbatch trinity-job.sh
scancel 261712
sinfo
sbatch trinity-job.sh
ls
sinfo
scontrol 
ls
cat slurm-261713.out-qbc180 
cd /work/mjfos2r/
ls
mkdir trinity_out
cd ~
vim trinity/trinity-job.sh 
vim trinity/trinity-batch.sh 
sbatch trinity/trinity-job.sh 
ls
sinfo
squeue -u mjfos2r
watch squeue -u mjfos2r
ls
cat slurm-261714.out-qbc180 
vim trinity/trinity-batch.sh 
sbatch trinity/trinity-job.sh 
sinfo
squeue -u mjfos2r
ls
show slurm-261715.out-qbc180 
cat slurm-261715.out-qbc180 
vim trinity/trinity-batch.sh 
sbatch trinity/trinity-job.sh 
cd /work/mjfos2r/
ls
cat blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | less
cat blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "ribosom"
cat blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "ribosom" | wv
cat blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "ribosom" | wc
cat blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep "Query=" | wc
cat blast_job/unmap_fa/blastx.trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq.gz.quant.unmapped.fq.gz.fa.out | grep -A 20 "Query="
ls
vim trinity/trinity-job.sh 
vim trinity/trinity-batch.sh 
sbatch trinity/trinity-job.sh 
squeue -u mjfos2r
watch squeue -u mjfos2r
scontrol
squeue -u mjfos2r
ls
cat slurm-261726.out-qbc201 
squeue -u mjfos2r
scancel 261726
vim trinity/trinity-batch.sh 
ls
ls trinity
pwd
rm -rf trinity
ls
rm slurm-261726.*
ls
rm trinity-batch.sh 
cd ~
ls
vim trinity/trinity-job.sh 
vim trinity/trinity-batch.sh 
sbatch trinity/trinity-job.sh 
squeue -u mjfos2r
watch squeue -u mjfos2r
vim trinity/trinity-batch.sh 
sbatch trinity/trinity-job.sh 
watch squeue -u mjfos2r
ls
cat slurm-261733.out-qbc201 
ls
cd ..
cd ~
ls
vim trinity/trinity-batch.sh 
vim trinity/trinity-job.sh 
sbatch trinity/trinity-job.sh 
squeue -u mjfos2r
watch squeue -u mjfos2r
scontrol show job 261736
ls
cat slurm-261736.out-qbc201 
tail slurm-261736.out-qbc201
watch tail slurm-261736.out-qbc201
watch squeue -u mjfos2r
ls
cat slurm-261736.out-qbc201 
ls
w
ls
cd /work/mjfos2r/
ls
cd tri
trinity_out/
cd trinity_out/
ls
cd ..
cd fastq/
ls
cd trinity-out/
ls
cat Trinity.timing 
cd insilico_read_normalization/
ls
cd tmp_normalized_reads/
ls
cd ..
ls
cd ..
ls
cd chrysalis/
ls
cd ..
ls
..
ls
c d..
cd ..
ls
cd ..
ls
cd ..
ls
cd ..
ls
cd local/
ls
cd ..
cd ddnA
ls
cd work/
ls
cd ..
ls
cd qb2work/
ls
cd mjfos2r/
ls
cd ..
ls
cd ..
ls
ls admin/
cd ..
ls
cd home/mjfos2r/
ls
squeue
ls
cd ..
ls
cd ..
ls
cd ..
ls
ls -a 
exit
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/1 ; mjfos2r pts/1 2022-07-14 15:58 . 160117 (76.165.48.2) ; 14-Jul-2022 15:58 ; 76.165.48.2)
ls
cat slurm-261736.out-qbc201 
#HUH
cat slurm-261736.out-qbc201 
module load trinity
trinity --help
Trinity --help
Trinity --show-full-usage
Trinity --show_full_usage_info
ls
cd trinity/
ls
vim trinity-job.sh 
cd ..
cat slurm-261736.out-qbc201 
ls
srun -A loni_pgtrain3
srun -A loni_pgtrain3 -tty /bin/bash
srun -A loni_pgtrain3 --time 01:00:00 -tty /bin/bash
#0(qbc2 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [261768.0] ; ; 14-Jul-2022 16:28 ; 76.165.48.2)
cd /work/mjfos2r/
ls
cd fastq/
ls
rm alltranscripts.fq 
rm trimmed.TR18_CKDL210019355-1a-AK1060_HGV5WBBXX_L3_1.fq.gz 
rm *.gz
ls
ls | wc
cat *.fq >> alltranscripts.fq
bg %1
top
ls
ls -lh
fastqc
module avail
cd ..
cd ~
ls
exit
srun -t 1:00:00 -n8 -N1 -p single --pty -A loni_pgtrain3 /bin/bash
ls
mv slurm-2617* slurm_reports/
ls
mv trinity/trinity-job.sh trinity/denovo_assembly
sbatch trinity/denovo_assembly
squeue -u mjfos2r
watch squeue -u mjfos2r
exit
#0(qbc1 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/5 ; mjfos2r pts/5 2022-07-14 17:29 . 2692 (38.108.51.12) ; 14-Jul-2022 17:29 ; 38.108.51.12)
ls
squeue -u mjfos2fr
squeue -u mjfos2r
ls
cat slurm-261769.out-qbc201 
ls
seqtk
cd /work/mjfos2r/
ls
cd seqtk/
ls
./seqtk
seqtk merge
./seqtk merge -h
Thread 1 terminated abnormally: Error, Error, cannot identify first line as read name line:
ls
cd ..
cd fastq/
ls
 srun -t 1:00:00 -n8 -N1 -A your_allocation_name -p single --pty /bin/bash
#0(qbc1 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [261782.0] ; ; 14-Jul-2022 17:43 ; 38.108.51.12)
ls
cat alltranscripts.fq | grep "@K00124:733:HGV5WBBXX:3:1101:6806:1397 1:N:0:CGAAGG"
grep -h
grep --help
cat alltranscripts.fq | grep -B 100 -A 100 "@K00124:733:HGV5WBBXX:3:1101:6806:1397 1:N:0:CGAAGG"
ls
echo "\n" >> trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq
tail trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq 
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq | sed 'r/'\n'/\n/g'
tail trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq
vim trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq
:q
tail trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq 
vim trimmed.TR14_CKDL210019355-1a-AK2788_HGV5WBBXX_L3_1.fq 
:q
echo \n
echo "hello \n hello"
echo "hello \ hello"
echo "hello" \n
echo \ "hello
:
"
echo \
echo "\"

"
echo " "
echo "" 
echo "" \ ""
echo " " \ " "
echo "." \ "."
echo ".".
echo \r
echo \n
echo \p
echo n\
echo >> *_1.fq
vim formatfix.sh
chmod +x formatfix.sh 
./formatfix.sh 
vim formatfix.sh
./formatfix.sh 
vim formatfix.sh 
./formatfix.sh 
vim formatfix.sh 
./formatfix.sh 
:wq
./formatfix.sh 
cat *_1.fq >> fixed_alltranscripts.fq
ls
cat fixed_alltranscripts.fq | wc 
bg %1
top
jobs
cat alltranscripts.fq | wc
bg %2
jobs
top
jobs
kill %2
fg %1
wc 
wc < alltranscripts.fq
ls
cat alltranscripts.fq 
line count
wc -l alltranscripts.fq
ls -lh
mv alltranscripts.fq bustedtranscripts.fq
mv fixed_alltranscripts.fq alltranscripts.fq
ls
cd ..
cd ~
ls
sbatch trinity/denovo_assembly
exit 0
 srun -t 1:00:00 -n8 -N1 -A loni_pgtrain3 -p single --pty /bin/bash
cd ~
ls
mv slurm-261769.* slurm_reports/
ls
sbatch trinity/denovo_assembly 
ls
cat slurm-261790.out-qbc201
tail slurm-261790.out-qbc201
watch tail slurm-261790.out-qbc201
cat slurm-261790.out-qbc201 
#0(qbc1 ; mjfos2r ; root ; /bin/bash ; slurmstepd: [261792.0] ; ; 14-Jul-2022 18:41 ; 38.108.51.12)
cd /work/mjfos2r/
cd fastq/
ls
 srun -t 1:00:00 -n8 -N1 -A loni_pgtrain3 -p single --pty /bin/bash
ls
sbatch trinity/denovo_assembly
ls
squeue
squeue -u mjfos2r
ls
cat slurm-261805.out-qbc201 
ls
cd /work/mjfos2r/
ls
cd fastq/
ls
vim trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq 
vim trimmed.TR14_CKDL210019355-1a-AK2788_HGV5WBBXX_L3_1.fq 
:q
vim trimmed.TR15_CKDL210019355-1a-AK1061_HGV5WBBXX_L3_1.fq 
vim trimmed.TR14_CKDL210019355-1a-AK2788_HGV5WBBXX_L3_1.fq 
vim trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq 
vim trimmed.TR17_CKDL210019355-1a-AK1929_HGV5WBBXX_L3_1.fq 
vim trimmed.TR18
rm alltranscripts.fq 
rm bustedtranscripts.fq 
ls
cd trinity-out/
ls
cd ..
rm -rf trinity-out/
ls
vim de-scuff
ls
vim de-scuff 
vim de-scuff
module avail | grep parallel
vim de-scuff
sbatch de-scuff 
ls
squeue -u mjfos2r
ls
cat fix_fastq.out
cat fix_fastq.err 
tail --help
tail *.fq
tail -n 1 *.fq
tail -n 10 *.fq
cat trimmed.TR12_CKDL210019355-1a-52_HGV5WBBXX_L3_1.fq 
ls
cat trimmed.TR14
cat trimmed.TR14_CKDL210019355-1a-AK2788_HGV5WBBXX_L3_1.fq 
ls
#fucking dammit
rm *.fq
ls
cd ..
ls
exit
#0(qbc2 ; mjfos2r ; root ; bash -c rsync --server -vlogDtprz . /work/mjfos2r/fastq ; sshd: mjfos2r@notty ; ; 14-Jul-2022 20:21 ; 38.108.51.12)
#0(qbc1 ; mjfos2r ; root ; bash -c rsync --server -vlogDtpr . /work/mjfos2r/fastq ; sshd: mjfos2r@notty ; ; 14-Jul-2022 20:23 ; 38.108.51.12)
#0(qbc2 ; mjfos2r ; root ; bash -c rsync --server -vlogDtpr . /work/mjfos2r/fastq ; sshd: mjfos2r@notty ; ; 15-Jul-2022 11:00 ; 76.165.48.2)
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/4 ; mjfos2r pts/4 2022-07-15 11:03 . 120979 (76.165.48.2) ; 15-Jul-2022 11:03 ; 76.165.48.2)
squeue -u mjfos2r
ls
cat slurm-261805.out-qbc201 
#0(qbc2 ; mjfos2r ; root ; -bash ; sshd: mjfos2r@pts/7 ; mjfos2r pts/7 2022-07-15 11:03 . 122502 (76.165.48.2) ; 15-Jul-2022 11:04 ; 76.165.48.2)
ls
cat slurm-261790.out-qbc201 
ls
mv slurm-261* slurm_reports/
ls
exit
cd /work/mjfos2r/fastq/
ls -lh
cd ..
du -h
#okay cool transfer completed
#now lets try to feed in all of the fastq files as a single txt file instead of catting them into one fastq and then feeding that in
sinfo
module avail
ls -R
ls -R | grep "*.sh"
ls -R | grep *.sh
ls trinity
pwd
cd !
cd ~
ls
ls -R
mv trinity/combinefastq trinity/combinefastq.sh
mv trinity/denovo_assembly trinity/denovo_assembly.sh
mv spades_job/spades spades_job/spades.sh
mv bowtie2/bowtie2_index bowtie2/bowtie2_index.sh
mv bowtie2/bowtie2_run bowtie2/bowtie2_run.sh
mv blast_job/blast blast_job/blast.sh
mv blast_job/blast_denovo/blast-denovo blast_job/blast_denovo/blast-denovo.sh
ls -R | grep .sh
mv blast_job/recompfastq blast_job/recompfastq.sh
ls -R -1
exit
#0(qbc2 ; mjfos2r ; root ; bash -c rsync --server --sender -vnlogDtpr . /home/mjfos2r ; sshd: mjfos2r@notty ; ; 15-Jul-2022 12:16 ; 76.165.48.2)
#0(qbc2 ; mjfos2r ; root ; bash -c rsync --server --sender -vlogDtpr . /home/mjfos2r ; sshd: mjfos2r@notty ; ; 15-Jul-2022 12:16 ; 76.165.48.2)
