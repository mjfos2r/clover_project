# Meeting with Nic, Jun13

definitely a forked pipeline

build denovo in trinity.
mapped against ref

then map reads against denovo transcriptome and then call abundance and variants.
use salmon for this.

genome + annotation.

use denovo transcriptome as reference in salmon as well as the other transcriptome for genequant.

use feature counts in R, DESeq as well in R
***

## Possible issues

some issues with heterogeneity due to read # and issues with using numbers of transcripts.
>use relative abundance.
>can see diffexp in high copy genes.
>likely won't see low copy genes e.g transcription factors, flowering initiators, etc.
>may need to pay for another lane of sequencing and reseq samples.
skeleton of pipeline:
pipeline start->QC
-> trimmomatic
->>
->>>trinity for denovo transcriptome direct from reads
->>>minimap2? for reads mapped against reference transcriptome
-> in salmon, call variants/expression values of ->>
->>reads vs reference
->>reads vs denovo transcriptome
-> plots n stuff, (feature counts, DESeq)

high number of duplicates makes sense.

## Another fork to deal with paired end reads

since lexogen does not recommend paired end reads,
run paired end first and then run single end reads afterwards.

bbduke? vbduke? to trim? trim from both ends, up the phred.
>bbduk
<https://github.com/BioInfoTools/BBMap/blob/master/sh/bbduk.sh>
maybe use with trimmomatic or instead of.

they are using dovetail for illumina + pacBio for hybrid transcriptome
> possibly for use of nanopore long reads.

todo://
inventory remaining samples
plot QC data vs RNA abundance/PCR cycles/etc.
look into lonnie workshops, get registration set up for HPC cluster
write allocation proposal?
>get nic to help.
look into lexogen kit re: high adapter content near end of read.
get to diffexp and gene expresion, get data to point where conclusions can be made.
so then GO analysis, then genome network.
bottom line: get to differential expression asap.

this week:
will go through samples,
pool and reseq all but 8.
for me:
start plotting and tidying the initial data.
then start pipeline and get things trimmed.
