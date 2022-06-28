# lets try trimmomatic on the raw data
going to attempt one of these for a sample with a decent number of reads and otherwise okay QC checks
from the documentation on github:
<https://github.com/usadellab/Trimmomatic>
***
actually, lets make sure java and trimmomatic are playing nicely on the apple silicon mbp
```
❯ java -jar trimmomatic-0.39.jar --help
Usage:
       PE [-version] [-threads <threads>] [-phred33|-phred64] [-trimlog <trimLogFile>] [-summary <statsSummaryFile>] [-quiet] [-validatePairs] [-basein <inputBase> | <inputFile1> <inputFile2>] [-baseout <outputBase> | <outputFile1P> <outputFile1U> <outputFile2P> <outputFile2U>] <trimmer1>...
   or:
       SE [-version] [-threads <threads>] [-phred33|-phred64] [-trimlog <trimLogFile>] [-summary <statsSummaryFile>] [-quiet] <inputFile> <outputFile> <trimmer1>...
   or:
       -version
```
okay, so that works at least. lets see if the version checks out.
```
❯ java -jar trimmomatic-0.39.jar -version
0.39
```
okay cool.

so lets attempt this on a single dataset.

the anatomy of the command is:
```
java + -jar <trimmomatic.jar> + PE <input_forward.fq.gz> <input_reverse.fq.gz> <output_forward_paired.fq.gz> <output_forward_unpaired.fq.gz> <output_reverse_paired.fq.gz> <output_reverse_unpaired.fq.gz> ILLUMINACLIP:TruSeq3-PE.fa
```
okay lets try with TR25
```
 java -jar ~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/trimmomatic-0.39.jar PE TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
```
```
❯ java -jar ~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/trimmomatic-0.39.jar PE TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
TrimmomaticPE: Started with arguments:
 TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
java.io.FileNotFoundException: /Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/TruSeq3-PE.fa (No such file or directory)
	at java.base/java.io.FileInputStream.open0(Native Method)
	at java.base/java.io.FileInputStream.open(FileInputStream.java:216)
	at java.base/java.io.FileInputStream.<init>(FileInputStream.java:157)
	at org.usadellab.trimmomatic.fasta.FastaParser.parse(FastaParser.java:54)
	at org.usadellab.trimmomatic.trim.IlluminaClippingTrimmer.loadSequences(IlluminaClippingTrimmer.java:110)
	at org.usadellab.trimmomatic.trim.IlluminaClippingTrimmer.makeIlluminaClippingTrimmer(IlluminaClippingTrimmer.java:71)
	at org.usadellab.trimmomatic.trim.TrimmerFactory.makeTrimmer(TrimmerFactory.java:32)
	at org.usadellab.trimmomatic.Trimmomatic.createTrimmers(Trimmomatic.java:59)
	at org.usadellab.trimmomatic.TrimmomaticPE.run(TrimmomaticPE.java:552)
	at org.usadellab.trimmomatic.Trimmomatic.main(Trimmomatic.java:80)
Quality encoding detected as phred33
^C%
```
okay, need to path it to the adapters.fa file included in trimmomatic
```
 java -jar ~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/trimmomatic-0.39.jar PE TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
```
```
❯ java -jar ~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/trimmomatic-0.39.jar PE TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
TrimmomaticPE: Started with arguments:
 TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
java.io.FileNotFoundException: /Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/~/sequencing/summer/clover_project/trimmomatic/Trimmomatic-0.39/adapters/TruSeq3-PE.fa (No such file or directory)
	at java.base/java.io.FileInputStream.open0(Native Method)
	at java.base/java.io.FileInputStream.open(FileInputStream.java:216)
	at java.base/java.io.FileInputStream.<init>(FileInputStream.java:157)
	at org.usadellab.trimmomatic.fasta.FastaParser.parse(FastaParser.java:54)
	at org.usadellab.trimmomatic.trim.IlluminaClippingTrimmer.loadSequences(IlluminaClippingTrimmer.java:110)
	at org.usadellab.trimmomatic.trim.IlluminaClippingTrimmer.makeIlluminaClippingTrimmer(IlluminaClippingTrimmer.java:71)
	at org.usadellab.trimmomatic.trim.TrimmerFactory.makeTrimmer(TrimmerFactory.java:32)
	at org.usadellab.trimmomatic.Trimmomatic.createTrimmers(Trimmomatic.java:59)
	at org.usadellab.trimmomatic.TrimmomaticPE.run(TrimmomaticPE.java:552)
	at org.usadellab.trimmomatic.Trimmomatic.main(Trimmomatic.java:80)
Quality encoding detected as phred33
^C%
```
okay so have to path to the reads from the trimmomatic folder and not the other way around.

third times the charm:
```
java -jar trimmomatic-0.39.jar PE /Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz \
/Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz \
output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz \
ILLUMINACLIP:adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
```
okay, had to not path to adapters
```
❯ java -jar trimmomatic-0.39.jar PE /Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz /Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
TrimmomaticPE: Started with arguments:
 /Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq.gz /Users/michaelfoster/sequencing/data-raw_seq/clover/RNAseq_Trifolium_repens_2021/MD5/raw_data/TR25_actual/TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq.gz output_forward_paired_trimmed.fq.gz output_forward_unpaired_trimmed.fq.gz output_reverse_paired_trimmed.fq.gz output_reverse_unpaired_trimmed.fq.gz ILLUMINACLIP:adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:20
Using PrefixPair: 'TACACTCTTTCCCTACACGACGCTCTTCCGATCT' and 'GTGACTGGAGTTCAGACGTGTGCTCTTCCGATCT'
ILLUMINACLIP: Using 1 prefix pairs, 0 forward/reverse sequences, 0 forward only sequences, 0 reverse only sequences
Quality encoding detected as phred33
Input Read Pairs: 7831399 Both Surviving: 530897 (6.78%) Forward Only Surviving: 7258885 (92.69%) Reverse Only Surviving: 188 (0.00%) Dropped: 41429 (0.53%)
TrimmomaticPE: Completed successfully
```
okay ran fastQC and then multiQC

looks good.
now we're gonna run salmon on it.

<<<INPROG>>>
