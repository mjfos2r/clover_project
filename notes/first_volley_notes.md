# First Volley, pick up from trimToSalmon/other Notes

okay, today we will be indexing the reference genome via samtools, then using that in gffread to generate the transcript.fa file needed for salmon.

so let's start.

reference genome downloaded (again) after it broke due to git LFS.
link to download: <https://www.ncbi.nlm.nih.gov/assembly/GCA_005869975.1/>

okay, so step 1 is to generate an index using samtools faidx

```bash
samtools faidx genome.fa
```

so first i had to un-gzip the ref fasta as samtools doesn't like gnuzip.
that out of the way, now time to run samtools on the file.

```bash
❯ samtools faidx --help
Usage: samtools faidx <file.fa|file.fa.gz> [<reg> [...]]
Option:
 -o, --output FILE        Write FASTA to file.
 -n, --length INT         Length of FASTA sequence line. [60]
 -c, --continue           Continue after trying to retrieve missing region.
 -r, --region-file FILE   File of regions.  Format is chr:from-to. One per line.
 -i, --reverse-complement Reverse complement sequences.
     --mark-strand TYPE   Add strand indicator to sequence name
                          TYPE = rc   for /rc on negative strand (default)
                                 no   for no strand indicator
                                 sign for (+) / (-)
                                 custom,<pos>,<neg> for custom indicator
     --fai-idx      FILE  name of the index file (default file.fa.fai).
     --gzi-idx      FILE  name of compressed file index (default file.fa.gz.gzi).
 -f, --fastq              File and index in FASTQ format.
 -h, --help               This message.
```

## Samtools Index of Reference Genome

```bash
❯ samtools faidx GCA_005869975.1_AgR_To_v5_genomic.fna
❯ ls
GCA_005869975.1_AgR_To_v5_genomic.fna     README.txt
GCA_005869975.1_AgR_To_v5_genomic.fna.fai md5checksums.txt
GCA_005869975.1_AgR_To_v5_genomic.fna.gz
```

okay cool.

## GFFread to generate transcripts.fa

now to actually generate the transcript fasta for salmon input.

okay so the path to the reference genome that's needed for gffread is

```bash
/Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna
```

so
the command should be something like
gffread -w transcript.fa -g/path/to/genome.fa transcripts.gff

```bash
gffread -w TR_Transcripts.fa -g /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna /Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/TrR.v5.updated.gff 
```

moment of truth

```bash
❯ gffread -w TR_Transcripts.fa -g /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna /Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/TrR.v5.updated.gff
❯ ls
TR_Transcripts.fa                TrR.v5.updated.gff
TrR.v5.renamed_reformated-1.gtf  backup_of_TRv5_transcript.gtf.bu
```

well that was quick....
took less than 5 seconds. guess generating the fai really does speed it up, now for salmon.

## Salmon

apparently I need to prepare the transcriptome indices via mapping mode as I do not have an alignment .bam/sam file for the reads yet.. okay.

so first I need to build a salmon index for the transcriptome.
assuming that transcripts.fa contains the set of transcripts we wish to quantify, salmon devs recommend building a decoy-aware transcriptome file.

two options for that:

1. compute a set of decoy sequences by mapping the annotated transcripts that are desired to index against a hard masked version of the organism's genome. this can be done using MeshMap2 and there are scripts included with salmon for this apparently. specifically, generateDecoyTranscriptome.sh, refer to <https://github.com/COMBINE-lab/SalmonTools/blob/master/README.md>

2. use the entire genome of the organism as the decoy sequence. this can be done by concatenating the genome to the end of thr transcriptome that is being indexed and populate decoys.txt with the chromosome names. they give instructions at <<https://combine-lab.github.io/alevin-tutorial/2019/selective-alignment/> > this is apparently more comprehensive but requires considerably more memory to build the index.

there are no pre-build reference decoys for Trifolium repens. looks like we get to do that from scrizzatch.

lets do #2 because I don't feel like installing mashmap2 yet.

so

### option 2 for salmon

from the above linked tutorial:
"Preparing metadata
Salmon indexing requires the names of the genome targets, which is extractable by using the grep command:"

```bash
grep "^>" <(gunzip -c whateverorganism.primary_assembly.genome.fa.gz) | cut -d " " -f 1 > decoys.txt
sed -i.bak -e 's/>//g' decoys.txt

```

then the transcripts and genome are concatenated into a single file.

```bash
cat transcripts.ref.fa.gz whateverOrganism.primary_assembly.genome.fa.gz > gentrome.fa.gz
```

okay and apparently then it's ready for salmon indexing and the rest of the pipeline.

so lets do that now.
we generated the transcripts.fa file using gffread so thats gonna get catted as well as the ref genome.
lets run the grep command above to get it ready.

typing it out to keep from breaking something:

```bash
grep "^>" <(gunzip -c /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz) | cut -d " " -f 1 > tr_decoys.txt
```

```bash
❯ grep "^>" <(gunzip -c /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz) | cut -d " " -f 1 > tr_decoys.txt
╭─░▒▓    ~/se/summer/clover_project/refseq/transcript-ref    main ?2 ▓▒░······░▒▓ ✔  11:11:09  ▓▒░
```

okay so that worked, and quickly. now lets cat it and the refgenome into the new TR-gentrome.fa.gz file.

again, typing out the command before running it.

```bash
cat TR_Transcripts.fa /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz > tr-gentrome.fa.gz
```

okay so that worked apparently.
time to attempt a salmon now.

```bash
salmon index -t tr-gentrome.fa.gz -d tr-decoys.txt -i salmon_index
```

okay lets run it now.

update: since apple silicon is the bane of compatibility, need to activate a rosetta conda environment and install it that way.
so...

```bash
❯ rosettaenv
alright lets activate source to miniconda3 so this script works
now to activate base x86_64 env
should be in rosetta!

     active environment : rosetta
    active env location : /Users/michaelfoster/opt/miniconda3/envs/rosetta
            shell level : 1
       user config file : /Users/michaelfoster/.condarc
 populated config files : /Users/michaelfoster/.condarc
          conda version : 4.12.0
    conda-build version : 3.21.8
         python version : 3.9.7.final.0
       virtual packages : __osx=10.16=0
                          __unix=0=0
                          __archspec=1=x86_64
       base environment : /Users/michaelfoster/opt/miniconda3  (writable)
      conda av data dir : /Users/michaelfoster/opt/miniconda3/etc/conda
  conda av metadata url : None
           channel URLs : https://conda.anaconda.org/conda-forge/osx-64
                          https://conda.anaconda.org/conda-forge/noarch
          package cache : /Users/michaelfoster/opt/miniconda3/pkgs
                          /Users/michaelfoster/.conda/pkgs
       envs directories : /Users/michaelfoster/opt/miniconda3/envs
                          /Users/michaelfoster/.conda/envs
               platform : osx-64
             user-agent : conda/4.12.0 requests/2.27.1 CPython/3.9.7 Darwin/21.5.0 OSX/10.16
                UID:GID : 501:20
             netrc file : None
           offline mode : False

make sure it's the correct platform! should be Platform: osx-64 and NOT Platform: osx-arm64.
❯ conda create -n salmonx86
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/michaelfoster/opt/miniconda3/envs/salmonx86



Proceed ([y]/n)? y

Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate salmonx86
#
# To deactivate an active environment, use
#
#     $ conda deactivate

❯ conda activate salmonx86
❯ conda install --channel bioconda salmon
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/michaelfoster/opt/miniconda3/envs/salmonx86

  added / updated specs:
    - salmon


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    boost-cpp-1.74.0           |       hdbf7018_7        15.6 MB  conda-forge
    icu-69.1                   |       he49afe7_0        12.9 MB  conda-forge
    libcxx-14.0.5              |       hce7ea42_1         1.3 MB  conda-forge
    libjemalloc-5.2.1          |       he49afe7_6         220 KB  conda-forge
    salmon-1.8.0               |       ha8e4af9_1         5.3 MB  bioconda
    tbb-2021.5.0               |       hbb4e6a2_1         157 KB  conda-forge
    zstd-1.5.2                 |       ha9df2e0_1         469 KB  conda-forge
    ------------------------------------------------------------
                                           Total:        35.9 MB

The following NEW packages will be INSTALLED:

  boost-cpp          conda-forge/osx-64::boost-cpp-1.74.0-hdbf7018_7
  bzip2              conda-forge/osx-64::bzip2-1.0.8-h0d85af4_4
  icu                conda-forge/osx-64::icu-69.1-he49afe7_0
  libcxx             conda-forge/osx-64::libcxx-14.0.5-hce7ea42_1
  libjemalloc        conda-forge/osx-64::libjemalloc-5.2.1-he49afe7_6
  libzlib            conda-forge/osx-64::libzlib-1.2.12-h6c3fc93_0
  lz4-c              conda-forge/osx-64::lz4-c-1.9.3-he49afe7_1
  salmon             bioconda/osx-64::salmon-1.8.0-ha8e4af9_1
  tbb                conda-forge/osx-64::tbb-2021.5.0-hbb4e6a2_1
  xz                 conda-forge/osx-64::xz-5.2.5-haf1e3a3_1
  zstd               conda-forge/osx-64::zstd-1.5.2-ha9df2e0_1


Proceed ([y]/n)? y


Downloading and Extracting Packages
libcxx-14.0.5        | 1.3 MB    | ############################################################### | 100%
salmon-1.8.0         | 5.3 MB    | ############################################################### | 100%
libjemalloc-5.2.1    | 220 KB    | ############################################################### | 100%
tbb-2021.5.0         | 157 KB    | ############################################################### | 100%
zstd-1.5.2           | 469 KB    | ############################################################### | 100%
icu-69.1             | 12.9 MB   | ############################################################### | 100%
boost-cpp-1.74.0     | 15.6 MB   | ############################################################### | 100%
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```

okay NOW lets try salmon again.

```bash
❯ conda activate salmonx86
❯ salmon
salmon v1.8.0

Usage:  salmon -h|--help or
        salmon -v|--version or
        salmon -c|--cite or
        salmon [--no-version-check] <COMMAND> [-h | options]

Commands:
     index      : create a salmon index
     quant      : quantify a sample
     alevin     : single cell analysis
     swim       : perform super-secret operation
     quantmerge : merge multiple quantifications into a single file

```

oh and I think I'll use the -k 31 flag as specified in the salmon docs.

```bash
❯ salmon index -t tr-gentrome.fa.gz -d tr-decoys.txt -i salmon_index -k 31
Version Info: This is the most recent version of salmon.
index ["salmon_index"] did not previously exist  . . . creating it
[2022-06-15 11:21:02.743] [jLog] [info] building index
out : salmon_index
[2022-06-15 11:21:02.744] [puff::index::jointLog] [info] Running fixFasta
[2022-06-15 11:21:02.745] [puff::index::jointLog] [error] The decoy file tr-decoys.txt does not exist.
❯ ls
TR_Transcripts.fa                backup_of_TRv5_transcript.gtf.bu tr_decoys.txt
TrR.v5.renamed_reformated-1.gtf  salmon_index
TrR.v5.updated.gff               tr-gentrome.fa.gz
#of course I forgot it was underscored.
❯ rm -rf salmon_index
❯ salmon index -t tr-gentrome.fa.gz -d tr_decoys.txt -i salmon_index -k 31
Version Info: This is the most recent version of salmon.
index ["salmon_index"] did not previously exist  . . . creating it
[2022-06-15 11:21:53.827] [jLog] [info] building index
out : salmon_index
[2022-06-15 11:21:53.828] [puff::index::jointLog] [info] Running fixFasta

[Step 1 of 4] : counting k-mers
[2022-06-15 11:21:53.845] [puff::index::jointLog] [warning] Entry with header [CM019101.1.jg6.t1_cds14], had length less than equal to the k-mer length of 31 (perhaps after poly-A clipping)
[2022-06-15 11:21:53.846] [puff::index::jointLog] [warning] Entry with header [CM019101.1.jg11.t1_cds20], had length less than equal to the k-mer length of 31 (perhaps after poly-A clipping)
[2022-06-15 11:21:53.846] [puff::index::jointLog] [warning] Entry with header [CM019101.1.jg11.t1_cds31], had length less than equal to the k-mer length of 31 (perhaps after poly-A clipping)
[2022-06-15 11:21:53.847] [puff::index::jointLog] [warning] Entry with header [CM019101.1.jg17.t1_cds5], had length less than equal to the k-mer length of 31 (perhaps after poly-A clipping)
[2022-06-15 11:21:53.847] [puff::index::jointLog] [warning] Entry with header [CM019101.1.jg21.t1_cds5], had length less than equal to the k-mer length of 31 (perhaps after poly-A clipping)
.... bunch of errors like this:
and finally this error ....
[2022-06-15 11:22:01.609] [puff::index::jointLog] [critical] The decoy file contained the names of 10680 decoy sequences, but 0 were matched by sequences in the reference file provided. To prevent unintentional errors downstream, please ensure that the decoy file exactly matches with the fasta file that is being indexed.
Exception : [Error reading from the FASTA/Q stream. Minimum return code for left and right read was (-2). Make sure the file is valid.]
salmon index was invoked improperly.
For usage information, try salmon index --help
Exiting.
```

okay take two, lets NOT use the -k 31 flag and see what we get...

okay literally the same, just as broken..
okay lets use the script included with salmon........

okay to use the script I need samtools, mashmap, bedtools, in the conda environment.
so here's that installation.

```bash
❯ conda install -c bioconda samtools
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/michaelfoster/opt/miniconda3/envs/salmonx86

  added / updated specs:
    - samtools


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    htslib-1.15.1              |       hc057d7f_0         2.1 MB  bioconda
    krb5-1.19.3                |       hb98e516_0         1.3 MB  conda-forge
    libcurl-7.83.1             |       h23f1065_0         318 KB  conda-forge
    libdeflate-1.10            |       h0d85af4_0          78 KB  conda-forge
    libnghttp2-1.47.0          |       hca56917_0         874 KB  conda-forge
    libssh2-1.10.0             |       hd3787cc_2         221 KB  conda-forge
    samtools-1.15.1            |       h9f30945_0         418 KB  bioconda
    ------------------------------------------------------------
                                           Total:         5.2 MB

The following NEW packages will be INSTALLED:

  c-ares             conda-forge/osx-64::c-ares-1.18.1-h0d85af4_0
  ca-certificates    conda-forge/osx-64::ca-certificates-2022.5.18.1-h033912b_0
  htslib             bioconda/osx-64::htslib-1.15.1-hc057d7f_0
  krb5               conda-forge/osx-64::krb5-1.19.3-hb98e516_0
  libcurl            conda-forge/osx-64::libcurl-7.83.1-h23f1065_0
  libdeflate         conda-forge/osx-64::libdeflate-1.10-h0d85af4_0
  libedit            conda-forge/osx-64::libedit-3.1.20191231-h0678c8f_2
  libev              conda-forge/osx-64::libev-4.33-haf1e3a3_1
  libnghttp2         conda-forge/osx-64::libnghttp2-1.47.0-hca56917_0
  libssh2            conda-forge/osx-64::libssh2-1.10.0-hd3787cc_2
  ncurses            conda-forge/osx-64::ncurses-6.3-h96cf925_1
  openssl            conda-forge/osx-64::openssl-3.0.3-hfe4f2af_0
  samtools           bioconda/osx-64::samtools-1.15.1-h9f30945_0
  zlib               conda-forge/osx-64::zlib-1.2.12-h6c3fc93_0


Proceed ([y]/n)? y


Downloading and Extracting Packages
libnghttp2-1.47.0    | 874 KB    | ############################################################### | 100%
libssh2-1.10.0       | 221 KB    | ############################################################### | 100%
libcurl-7.83.1       | 318 KB    | ############################################################### | 100%
htslib-1.15.1        | 2.1 MB    | ############################################################### | 100%
samtools-1.15.1      | 418 KB    | ############################################################### | 100%
libdeflate-1.10      | 78 KB     | ############################################################### | 100%
krb5-1.19.3          | 1.3 MB    | ############################################################### | 100%
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
❯ conda install -c bioconda mashmap
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/michaelfoster/opt/miniconda3/envs/salmonx86

  added / updated specs:
    - mashmap


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    gsl-2.7                    |       h93259b0_0         3.1 MB  conda-forge
    libblas-3.9.0              |15_osx64_openblas          12 KB  conda-forge
    libcblas-3.9.0             |15_osx64_openblas          12 KB  conda-forge
    libgfortran-5.0.0          |9_3_0_h6c81a4c_23          19 KB  conda-forge
    libgfortran5-9.3.0         |      h6c81a4c_23         1.7 MB  conda-forge
    libopenblas-0.3.20         |openmp_hb3cd9ec_0         9.6 MB  conda-forge
    llvm-openmp-14.0.4         |       ha654fa7_0         329 KB  conda-forge
    mashmap-2.0                | pl5321h543b79d_8          87 KB  bioconda
    mkl-2022.1.0               |     h860c996_928       188.8 MB  conda-forge
    openblas-0.3.20            |openmp_h5ad848b_0        10.7 MB  conda-forge
    ------------------------------------------------------------
                                           Total:       214.3 MB

The following NEW packages will be INSTALLED:

  gsl                conda-forge/osx-64::gsl-2.7-h93259b0_0
  libblas            conda-forge/osx-64::libblas-3.9.0-15_osx64_openblas
  libcblas           conda-forge/osx-64::libcblas-3.9.0-15_osx64_openblas
  libgfortran        conda-forge/osx-64::libgfortran-5.0.0-9_3_0_h6c81a4c_23
  libgfortran5       conda-forge/osx-64::libgfortran5-9.3.0-h6c81a4c_23
  libopenblas        conda-forge/osx-64::libopenblas-0.3.20-openmp_hb3cd9ec_0
  llvm-openmp        conda-forge/osx-64::llvm-openmp-14.0.4-ha654fa7_0
  mashmap            bioconda/osx-64::mashmap-2.0-pl5321h543b79d_8
  mkl                conda-forge/osx-64::mkl-2022.1.0-h860c996_928
  openblas           conda-forge/osx-64::openblas-0.3.20-openmp_h5ad848b_0
  perl               conda-forge/osx-64::perl-5.32.1-2_h0d85af4_perl5


Proceed ([y]/n)? y


Downloading and Extracting Packages
llvm-openmp-14.0.4   | 329 KB    | ############################################################### | 100%
mashmap-2.0          | 87 KB     | ############################################################### | 100%
libgfortran5-9.3.0   | 1.7 MB    | ############################################################### | 100%
libgfortran-5.0.0    | 19 KB     | ############################################################### | 100%
libblas-3.9.0        | 12 KB     | ############################################################### | 100%
mkl-2022.1.0         | 188.8 MB  | ############################################################### | 100%
libcblas-3.9.0       | 12 KB     | ############################################################### | 100%
gsl-2.7              | 3.1 MB    | ############################################################### | 100%
openblas-0.3.20      | 10.7 MB   | ############################################################### | 100%
libopenblas-0.3.20   | 9.6 MB    | ############################################################### | 100%
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
❯ conda install -c bioconda bedtools
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /Users/michaelfoster/opt/miniconda3/envs/salmonx86

  added / updated specs:
    - bedtools


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    bedtools-2.30.0            |       h0e31d98_3         810 KB  bioconda
    ------------------------------------------------------------
                                           Total:         810 KB

The following NEW packages will be INSTALLED:

  bedtools           bioconda/osx-64::bedtools-2.30.0-h0e31d98_3


Proceed ([y]/n)? y


Downloading and Extracting Packages
bedtools-2.30.0      | 810 KB    | ############################################################### | 100%
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```

okay, now lets run that script...

```bash
❯ where bedtools
/Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/bedtools
❯ where mashmap
/Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/mashmap
❯ #okay
❯ ../../salmon/SalmonTools/scripts/generateDecoyTranscriptome.sh
zsh: permission denied: ../../salmon/SalmonTools/scripts/generateDecoyTranscriptome.sh
#okay so it needs permissions updated to execute, also just gonna copy it to ~/scripts/
#so... lets try again.
#can I get a usage PLEASE...
❯ generateDecoyTranscriptome.sh
****************
*** getDecoy ***
****************
Error: missing required argument(s)
Usage: /Users/michaelfoster/scripts/generateDecoyTranscriptome.sh [-j <N> =1 default] [-b <bedtools binary path> =bedtools default] [-m <mashmap binary path> =mashmap default] -a <gtf file> -g <genome fasta> -t <txome fasta> -o <output path>

***************
*** ABORTED ***
***************

An error occurred. Exiting...
#HOORAY.
```

okay now to type the script command with paths to the conda installed binaries for bedtools and mashmap
maybe when it says transcriptome file, it isn't actually asking for the one generated by gffread that I did earlier.
Maybe it's asking for the raw transcript reads.
ignore the above sentence. we're feeding it transcripts.fa

```bash
generateDecoyTranscriptome.sh -j 32 -b /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/bedtools -m /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/mashmap -a TrR.v5.renamed_reformated-1.gtf -g /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz -t TR_Transcripts.fa -o .
```

lets try it now

```bash
❯ generateDecoyTranscriptome.sh -j <threads> -b /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/bedtools -m /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/mashmap -a TrR.v5.renamed_reformated-1.gtf -g /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz -t TR_Transcripts.fa -o .
zsh: no such file or directory: threads
❯ generateDecoyTranscriptome.sh -j 32 -b /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/bedtools -m /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/mashmap -a TrR.v5.renamed_reformated-1.gtf -g /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz -t TR_Transcripts.fa -o .
****************
*** getDecoy ***
****************
-j <Concurrency level> = 32
/Users/michaelfoster/scripts/generateDecoyTranscriptome.sh: line 44: realpath: command not found

***************
*** ABORTED ***
***************

An error occurred. Exiting...
```

somehow made it this far without coreutils

```bash
❯ realpath
zsh: command not found: realpath
❯ brew install realpath
Running `brew update --auto-update`...
==> Auto-updated Homebrew!
Updated 4 taps (homebrew/core, homebrew/cask, homebrew/services and nanoporetech/tap).
==> New Formulae
install-peerdeps                    redis@6.2                           zx
==> New Casks
elephicon                           localxpose                          phpwebstudy

Warning: No available formula with the name "realpath".
==> Searching for similarly named formulae...
Error: No similarly named formulae found.
==> Searching for a previously deleted formula (in the last month)...
Error: No previously deleted formula found.
==> Searching taps on GitHub...
Error: No formulae found in taps.
❯ brew install coreutils
==> Downloading https://ghcr.io/v2/homebrew/core/coreutils/manifests/9.1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/coreutils/blobs/sha256:6a9a4988eda436fb5bdb5969044579c2e6
==> Downloading from https://pkg-containers.githubusercontent.com/ghcr1/blobs/sha256:6a9a4988eda436fb5bdb5
######################################################################## 100.0%
==> Pouring coreutils--9.1.arm64_monterey.bottle.tar.gz
==> Caveats
Commands also provided by macOS and the commands dir, dircolors, vdir have been installed with the prefix "g".
If you need to use these commands with their normal names, you can add a "gnubin" directory to your PATH with:
  PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
==> Summary
🍺  /opt/homebrew/Cellar/coreutils/9.1: 480 files, 13.3MB
==> Running `brew cleanup coreutils`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

okay take II:

```bash
❯ generateDecoyTranscriptome.sh -j 32 -b /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/bedtools -m /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/mashmap -a TrR.v5.renamed_reformated-1.gtf -g /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz -t TR_Transcripts.fa -o .
****************
*** getDecoy ***
****************
-j <Concurrency level> = 32
-b <bedtools binary> = /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/bedtools
-m <mashmap binary> = /Users/michaelfoster/opt/miniconda3/envs/salmonx86/bin/mashmap
-a <Annotation GTF file> = /Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/TrR.v5.renamed_reformated-1.gtf
-g <Genome fasta> = /Users/michaelfoster/sequencing/data-raw_seq/reference_Genomes/trifolium_repens/ncbi-genomes-2022-06-15/GCA_005869975.1_AgR_To_v5_genomic.fna.gz
-t <Transcriptome fasta> = /Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/TR_Transcripts.fa
-o <Output files Path> = .
[1/10] Extracting exonic features from the gtf
[2/10] Masking the genome fasta
libc++abi: terminating with uncaught exception of type std::out_of_range: vector
/Users/michaelfoster/scripts/generateDecoyTranscriptome.sh: line 101: 18742 Abort trap: 6           $bedtools maskfasta -fi $genomefile -bed exons.bed -fo reference.masked.genome.fa

***************
*** ABORTED ***
***************

An error occurred. Exiting...
```

my c++ powerlevel is too low this morning to really get to the bottom of whatever it isn't liking...

first google: <https://stackoverflow.com/questions/44429406/c-terminating-with-uncaught-exception-of-type-stdout-of-range-vector-erro>
second google: <https://groups.google.com/g/bedtools-discuss/c/9IwvO_5LaJY?pli=1>
we have a winner!

ok so the issue is in masking. somehow.
Will ask nic after I grab lunch.
