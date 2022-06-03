```
❯ conda info
     active environment : None
            shell level : 0
       user config file : /Users/michaelfoster/.condarc
 populated config files : /opt/homebrew/Caskroom/miniforge/base/.condarc
                          /Users/michaelfoster/.condarc
          conda version : 4.12.0
    conda-build version : not installed
         python version : 3.9.10.final.0
       virtual packages : __osx=12.4=0
                          __unix=0=0
                          __archspec=1=arm64
       base environment : /opt/homebrew/Caskroom/miniforge/base  (writable)
      conda av data dir : /opt/homebrew/Caskroom/miniforge/base/etc/conda
  conda av metadata url : None
           channel URLs : https://conda.anaconda.org/conda-forge/osx-arm64
                          https://conda.anaconda.org/conda-forge/noarch
          package cache : /opt/homebrew/Caskroom/miniforge/base/pkgs
                          /Users/michaelfoster/.conda/pkgs
       envs directories : /opt/homebrew/Caskroom/miniforge/base/envs
                          /Users/michaelfoster/.conda/envs
               platform : osx-arm64
             user-agent : conda/4.12.0 requests/2.27.1 CPython/3.9.10 Darwin/21.5.0 OSX/12.4
                UID:GID : 501:20
             netrc file : None
           offline mode : False
```
### Okay cool, conda is working and it's the arm64 installation.
### Let's try to set up an env to use the RNA workflow in.

```
❯ conda create --name cloverRNAseq
Collecting package metadata (current_repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.12.0
  latest version: 4.13.0

Please update conda by running

    $ conda update -n base conda



## Package Plan ##

  environment location: /opt/homebrew/Caskroom/miniforge/base/envs/cloverRNAseq



Proceed ([y]/n)? n


CondaSystemExit: Exiting.
```
### okay, lets update conda then...

```
❯ conda update -n base conda
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /opt/homebrew/Caskroom/miniforge/base

  added / updated specs:
    - conda


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    ca-certificates-2022.5.18.1|       h4653dfc_0         145 KB  conda-forge
    certifi-2022.5.18.1        |   py39h2804cbe_0         151 KB  conda-forge
    conda-4.13.0               |   py39h2804cbe_1         992 KB  conda-forge
    cryptography-37.0.2        |   py39h4cb6239_0         1.1 MB  conda-forge
    curl-7.83.1                |       h2fcd78c_0         145 KB  conda-forge
    libarchive-3.5.2           |       h69ec738_2         1.6 MB  conda-forge
    libcurl-7.83.1             |       h2fcd78c_0         300 KB  conda-forge
    libcxx-14.0.4              |       h6a5c8ee_0         1.3 MB  conda-forge
    libsolv-0.7.22             |       h1280f1d_0         386 KB  conda-forge
    libxml2-2.9.14             |       h035c1df_0         655 KB  conda-forge
    libzlib-1.2.12             |       h90dfc92_0          47 KB  conda-forge
    llvm-openmp-14.0.4         |       hd125106_0         297 KB  conda-forge
    ruamel_yaml-0.15.80        |py39h9eb174b_1007         236 KB  conda-forge
    setuptools-62.3.2          |   py39h2804cbe_0         1.4 MB  conda-forge
    sqlite-3.38.5              |       h40dfcc0_0         1.6 MB  conda-forge
    zlib-1.2.12                |       h90dfc92_0          76 KB  conda-forge
    zstd-1.5.2                 |       hd705a24_1         374 KB  conda-forge
    ------------------------------------------------------------
                                           Total:        10.7 MB

The following packages will be UPDATED:

  ca-certificates                      2021.10.8-h4653dfc_0 --> 2022.5.18.1-h4653dfc_0
  certifi                          2021.10.8-py39h2804cbe_2 --> 2022.5.18.1-py39h2804cbe_0
  conda                               4.12.0-py39h2804cbe_0 --> 4.13.0-py39h2804cbe_1
  cryptography                        36.0.2-py39hbe5e4b8_1 --> 37.0.2-py39h4cb6239_0
  curl                                    7.82.0-hb0e6552_0 --> 7.83.1-h2fcd78c_0
  libarchive                               3.5.2-hc24d6eb_1 --> 3.5.2-h69ec738_2
  libcurl                                 7.82.0-hb0e6552_0 --> 7.83.1-h2fcd78c_0
  libcxx                                  13.0.1-h6a5c8ee_0 --> 14.0.4-h6a5c8ee_0
  libsolv                                 0.7.19-hccf11d3_5 --> 0.7.22-h1280f1d_0
  libxml2                                 2.9.13-h97d9dda_0 --> 2.9.14-h035c1df_0
  libzlib                              1.2.11-h90dfc92_1014 --> 1.2.12-h90dfc92_0
  llvm-openmp                             14.0.0-hd125106_0 --> 14.0.4-hd125106_0
  openjdk                               11.0.9.1-h069f3c1_1 --> 11.0.9.1-he8acd94_3
  ruamel_yaml                     0.15.80-py39h5161555_1006 --> 0.15.80-py39h9eb174b_1007
  setuptools                          62.1.0-py39h2804cbe_0 --> 62.3.2-py39h2804cbe_0
  sqlite                                  3.38.2-h7e3ccbd_0 --> 3.38.5-h40dfcc0_0
  zlib                                 1.2.11-h90dfc92_1014 --> 1.2.12-h90dfc92_0
  zstd                                     1.5.2-h861e0a7_0 --> 1.5.2-hd705a24_1


Proceed ([y]/n)? y


Downloading and Extracting Packages
libarchive-3.5.2     | 1.6 MB    | ############################################################### | 100% 
ca-certificates-2022 | 145 KB    | ############################################################### | 100% 
setuptools-62.3.2    | 1.4 MB    | ############################################################### | 100% 
zlib-1.2.12          | 76 KB     | ############################################################### | 100% 
conda-4.13.0         | 992 KB    | ############################################################### | 100% 
libcxx-14.0.4        | 1.3 MB    | ############################################################### | 100% 
libzlib-1.2.12       | 47 KB     | ############################################################### | 100% 
llvm-openmp-14.0.4   | 297 KB    | ############################################################### | 100% 
certifi-2022.5.18.1  | 151 KB    | ############################################################### | 100% 
zstd-1.5.2           | 374 KB    | ############################################################### | 100% 
libxml2-2.9.14       | 655 KB    | ############################################################### | 100% 
curl-7.83.1          | 145 KB    | ############################################################### | 100% 
cryptography-37.0.2  | 1.1 MB    | ############################################################### | 100% 
sqlite-3.38.5        | 1.6 MB    | ############################################################### | 100% 
libcurl-7.83.1       | 300 KB    | ############################################################### | 100% 
libsolv-0.7.22       | 386 KB    | ############################################################### | 100% 
ruamel_yaml-0.15.80  | 236 KB    | ############################################################### | 100% 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```

### Okay, take II

```
❯ conda create --name CloverRNASeq
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /opt/homebrew/Caskroom/miniforge/base/envs/CloverRNASeq



Proceed ([y]/n)? y

Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate CloverRNASeq
#
# To deactivate an active environment, use
#
#     $ conda deactivate

❯ conda activate CloverRNASeq
```
### Okay, now to install the required packages.

Need to install :::
FastQC
Trimmomatic
??Something to map against reference? Minimap2? I like Minimap2??
Trinity
SalmonR
DESeq2

### REMEMBER TO USE -c bioconda

```
❯ conda install fastqc
Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Collecting package metadata (repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.

PackagesNotFoundError: The following packages are not available from current channels:

  - fastqc

Current channels:

  - https://conda.anaconda.org/conda-forge/osx-arm64
  - https://conda.anaconda.org/conda-forge/noarch

To search for alternate channels that may provide the conda package you're
looking for, navigate to

    https://anaconda.org

and use the search bar at the top of the page.


❯ conda install -c bioconda fastqc
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /opt/homebrew/Caskroom/miniforge/base/envs/CloverRNASeq

  added / updated specs:
    - fastqc


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    expat-2.4.8                |       h6b3803e_0         149 KB  conda-forge
    fastqc-0.11.9              |       hdfd78af_1         9.7 MB  bioconda
    fontconfig-2.14.0          |       hfb34624_0         280 KB  conda-forge
    perl-5.32.1                | 2_h9b22ae9_perl5        16.5 MB  conda-forge
    ------------------------------------------------------------
                                           Total:        26.6 MB

The following NEW packages will be INSTALLED:

  expat              conda-forge/osx-arm64::expat-2.4.8-h6b3803e_0
  fastqc             bioconda/noarch::fastqc-0.11.9-hdfd78af_1
  font-ttf-dejavu-s~ conda-forge/noarch::font-ttf-dejavu-sans-mono-2.37-hab24e00_0
  fontconfig         conda-forge/osx-arm64::fontconfig-2.14.0-hfb34624_0
  freetype           conda-forge/osx-arm64::freetype-2.10.4-h17b34a0_1
  libcxx             conda-forge/osx-arm64::libcxx-14.0.4-h6a5c8ee_0
  libpng             conda-forge/osx-arm64::libpng-1.6.37-hf7e6567_2
  libzlib            conda-forge/osx-arm64::libzlib-1.2.12-h90dfc92_0
  openjdk            conda-forge/osx-arm64::openjdk-11.0.9.1-he8acd94_3
  perl               conda-forge/osx-arm64::perl-5.32.1-2_h9b22ae9_perl5
  zlib               conda-forge/osx-arm64::zlib-1.2.12-h90dfc92_0


Proceed ([y]/n)? y


Downloading and Extracting Packages
fontconfig-2.14.0    | 280 KB    | ############################################################### | 100%
perl-5.32.1          | 16.5 MB   | ############################################################### | 100%
fastqc-0.11.9        | 9.7 MB    | ############################################################### | 100%
expat-2.4.8          | 149 KB    | ############################################################### | 100%
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```
### Okay, now to install trimmomatic

```
❯ conda install -c bioconda trimmomatic
Collecting package metadata (current_repodata.json): done
Solving environment: done

## Package Plan ##

  environment location: /opt/homebrew/Caskroom/miniforge/base/envs/CloverRNASeq

  added / updated specs:
    - trimmomatic


The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    openssl-3.0.3              |       ha287fd2_0         2.3 MB  conda-forge
    pip-22.1.2                 |     pyhd8ed1ab_0         1.5 MB  conda-forge
    setuptools-62.3.2          |  py310hbe9552e_0         1.3 MB  conda-forge
    trimmomatic-0.39           |       hdfd78af_2         144 KB  bioconda
    ------------------------------------------------------------
                                           Total:         5.4 MB

The following NEW packages will be INSTALLED:

  bzip2              conda-forge/osx-arm64::bzip2-1.0.8-h3422bc3_4
  ca-certificates    conda-forge/osx-arm64::ca-certificates-2022.5.18.1-h4653dfc_0
  libffi             conda-forge/osx-arm64::libffi-3.4.2-h3422bc3_5
  ncurses            conda-forge/osx-arm64::ncurses-6.3-h07bb92c_1
  openssl            conda-forge/osx-arm64::openssl-3.0.3-ha287fd2_0
  pip                conda-forge/noarch::pip-22.1.2-pyhd8ed1ab_0
  python             conda-forge/osx-arm64::python-3.10.4-h14b404e_0_cpython
  python_abi         conda-forge/osx-arm64::python_abi-3.10-2_cp310
  readline           conda-forge/osx-arm64::readline-8.1-hedafd6a_0
  setuptools         conda-forge/osx-arm64::setuptools-62.3.2-py310hbe9552e_0
  sqlite             conda-forge/osx-arm64::sqlite-3.38.5-h40dfcc0_0
  tk                 conda-forge/osx-arm64::tk-8.6.12-he1e0b03_0
  trimmomatic        bioconda/noarch::trimmomatic-0.39-hdfd78af_2
  tzdata             conda-forge/noarch::tzdata-2022a-h191b570_0
  wheel              conda-forge/noarch::wheel-0.37.1-pyhd8ed1ab_0
  xz                 conda-forge/osx-arm64::xz-5.2.5-h642e427_1


Proceed ([y]/n)? y


Downloading and Extracting Packages
trimmomatic-0.39     | 144 KB    | ############################################################### | 100%
setuptools-62.3.2    | 1.3 MB    | ############################################################### | 100%
pip-22.1.2           | 1.5 MB    | ############################################################### | 100%
openssl-3.0.3        | 2.3 MB    | ############################################################### | 100%
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
```
### Cool, now lets install minimap and trinity.

```
❯ conda install -c bioconda minimap2
Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Collecting package metadata (repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.

PackagesNotFoundError: The following packages are not available from current channels:

  - minimap2

Current channels:

  - https://conda.anaconda.org/bioconda/osx-arm64
  - https://conda.anaconda.org/bioconda/noarch
  - https://conda.anaconda.org/conda-forge/osx-arm64
  - https://conda.anaconda.org/conda-forge/noarch

To search for alternate channels that may provide the conda package you're
looking for, navigate to

    https://anaconda.org

and use the search bar at the top of the page.


❯ conda install minimap2
Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Collecting package metadata (repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.

PackagesNotFoundError: The following packages are not available from current channels:

  - minimap2

Current channels:

  - https://conda.anaconda.org/conda-forge/osx-arm64
  - https://conda.anaconda.org/conda-forge/noarch

To search for alternate channels that may provide the conda package you're
looking for, navigate to

    https://anaconda.org

and use the search bar at the top of the page.
```
### Okay, nevermind, I think I'll have to install minimap outside of conda. 
### I think it has to be compiled from source. Already have it installed I think, but anyways for
### posterity here is the steps to install it.

using https://github.com/lh3/minimap2 for the following code
```
git clone https://github.com/lh3/minimap2
cd minimap2 && make
# long sequences against a reference genome
./minimap2 -a test/MT-human.fa test/MT-orang.fa > test.sam
# create an index first and then map
./minimap2 -x map-ont -d MT-human-ont.mmi test/MT-human.fa
./minimap2 -a MT-human-ont.mmi test/MT-orang.fa > test.sam
# use presets (no test data)
./minimap2 -ax map-pb ref.fa pacbio.fq.gz > aln.sam       # PacBio CLR genomic reads
./minimap2 -ax map-ont ref.fa ont.fq.gz > aln.sam         # Oxford Nanopore genomic reads
./minimap2 -ax map-hifi ref.fa pacbio-ccs.fq.gz > aln.sam # PacBio HiFi/CCS genomic reads (v2.19 or later)
./minimap2 -ax asm20 ref.fa pacbio-ccs.fq.gz > aln.sam    # PacBio HiFi/CCS genomic reads (v2.18 or earlier)
./minimap2 -ax sr ref.fa read1.fa read2.fa > aln.sam      # short genomic paired-end reads
./minimap2 -ax splice ref.fa rna-reads.fa > aln.sam       # spliced long reads (strand unknown)
./minimap2 -ax splice -uf -k14 ref.fa reads.fa > aln.sam  # noisy Nanopore Direct RNA-seq
./minimap2 -ax splice:hq -uf ref.fa query.fa > aln.sam    # Final PacBio Iso-seq or traditional cDNA
./minimap2 -ax splice --junc-bed anno.bed12 ref.fa query.fa > aln.sam  # prioritize on annotated junctions
./minimap2 -cx asm5 asm1.fa asm2.fa > aln.paf             # intra-species asm-to-asm alignment
./minimap2 -x ava-pb reads.fa reads.fa > overlaps.paf     # PacBio read overlap
./minimap2 -x ava-ont reads.fa reads.fa > overlaps.paf    # Nanopore read overlap
# man page for detailed command line options
man ./minimap2.1
```
# Okay so do that if you don't have minimap installed and on $PATH. I already do, here's where my binaries are.
```
❯ which minimap2
/usr/local/bin/minimap2
❯ minimap2 --version
2.24-r1122
```
okay now for trinity.
```
❯ conda install -c bioconda trinity
Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Collecting package metadata (repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.

PackagesNotFoundError: The following packages are not available from current channels:

  - trinity

Current channels:

  - https://conda.anaconda.org/bioconda/osx-arm64
  - https://conda.anaconda.org/bioconda/noarch
  - https://conda.anaconda.org/conda-forge/osx-arm64
  - https://conda.anaconda.org/conda-forge/noarch

To search for alternate channels that may provide the conda package you're
looking for, navigate to

    https://anaconda.org

and use the search bar at the top of the page.


❯ conda install trinity
Collecting package metadata (current_repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.
Collecting package metadata (repodata.json): done
Solving environment: failed with initial frozen solve. Retrying with flexible solve.

PackagesNotFoundError: The following packages are not available from current channels:

  - trinity

Current channels:

  - https://conda.anaconda.org/conda-forge/osx-arm64
  - https://conda.anaconda.org/conda-forge/noarch

To search for alternate channels that may provide the conda package you're
looking for, navigate to

    https://anaconda.org

and use the search bar at the top of the page.
```
### Okay, time to install that from source as well....
### Maybe I'll write a dockerfile for future use ~~~HAH lets not~~~
using https://github.com/trinityrnaseq/trinityrnaseq as reference:

update: ACTUALLY using https://github.com/trinityrnaseq/trinityrnaseq/wiki
downloading from https://github.com/trinityrnaseq/trinityrnaseq/releases:
#### Downloaded for trinity installation.
URL TO DOWNLOAD: https://github.com/trinityrnaseq/trinityrnaseq/releases/download/Trinity-v2.14.0/trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
```
❯ wget https://github.com/trinityrnaseq/trinityrnaseq/releases/download/Trinity-v2.14.0/trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
--2022-06-03 10:30:52--  https://github.com/trinityrnaseq/trinityrnaseq/releases/download/Trinity-v2.14.0/trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
Resolving github.com (github.com)... 140.82.114.3
Connecting to github.com (github.com)|140.82.114.3|:443... connected.
HTTP request sent, awaiting response... 302 Found
Location: https://objects.githubusercontent.com/github-production-release-asset-2e65be/22736952/92daf8fa-50b2-47a9-9b92-3739a0a53b10?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20220603%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220603T153037Z&X-Amz-Expires=300&X-Amz-Signature=8181b99037841c9d60df13c30ebe8dfb3f73cf4fc0837eeecbd1392d73726b57&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=22736952&response-content-disposition=attachment%3B%20filename%3Dtrinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz&response-content-type=application%2Foctet-stream [following]
--2022-06-03 10:30:52--  https://objects.githubusercontent.com/github-production-release-asset-2e65be/22736952/92daf8fa-50b2-47a9-9b92-3739a0a53b10?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20220603%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220603T153037Z&X-Amz-Expires=300&X-Amz-Signature=8181b99037841c9d60df13c30ebe8dfb3f73cf4fc0837eeecbd1392d73726b57&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=22736952&response-content-disposition=attachment%3B%20filename%3Dtrinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz&response-content-type=application%2Foctet-stream
Resolving objects.githubusercontent.com (objects.githubusercontent.com)... 185.199.109.133, 185.199.108.133, 185.199.111.133, ...
Connecting to objects.githubusercontent.com (objects.githubusercontent.com)|185.199.109.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 310361867 (296M) [application/octet-stream]
Saving to: ‘trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz’

trinityrnaseq-v2.14.0.FULL 100%[======================================>] 295.98M  2.20MB/s    in 2m 14s

2022-06-03 10:33:07 (2.21 MB/s) - ‘trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz’ saved [310361867/310361867]
```
okay now lets unzip and decompress that package.

```
❯ cp ~/bioinformatics/trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz .
❯ ls
trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
❯ tar -xkzf trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
❯ ls
trinityrnaseq-v2.14.0
trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
```
### Cool now lets explore the directory unzipped.

### from README.md apparently I can install via bioconda but probably not with ARM64 ..... \n
### oh the joys of apple silicon.
```
[![install with bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg?style=flat-square)](https://bioconda.github.io/recipes/trinity/README.html)
```
maybe again with bioconda...?
UPDATE: Nope. 
okay from source it is. The following should work on x86 machines.
```
conda install trinity
```
back to source...

from the github for trinity:
"""
Quick Guide for the Impatient
Trinity assembles transcript sequences from Illumina RNA-Seq data.

Download Trinity here.

Build Trinity by typing 'make' in the base installation directory.
"""
okay lets do that then:

```
❯ pwd
/Users/michaelfoster/sequencing/summer/clover_project/trinity/trinityrnaseq-v2.14.0
❯ make
Using gnu compiler for Inchworm and Chrysalis
cd Inchworm && /Applications/Xcode.app/Contents/Developer/usr/bin/make
mkdir -p build
cd build && cmake -DCMAKE_INSTALL_PREFIX="" ../ && make DESTDIR=../ install
-- No build type specified so building in RELEASE mode.
-- system: Darwin
-- Configuring done
-- Generating done
-- Build files have been written to: /Users/michaelfoster/sequencing/summer/clover_project/trinity/trinityrnaseq-v2.14.0/Inchworm/build
[  3%] Building CXX object CMakeFiles/inchworm.dir/src/Fasta_entry.cpp.o
clang: error: unsupported option '-fopenmp'
make[4]: *** [CMakeFiles/inchworm.dir/src/Fasta_entry.cpp.o] Error 1
make[3]: *** [CMakeFiles/inchworm.dir/all] Error 2
make[2]: *** [all] Error 2
make[1]: *** [all] Error 2
make: *** [inchworm_target] Error 2
```
### WONDERFUL. OF COURSE.
### But there is a script titled "make.macOSX.sh" so lets cat that out.
```
❯ cat make.macOSX.sh
#!/bin/bash

make CXX=g++ CC=gcc
make plugins CXX=g++ CC=gcc
```
okay lets run that one.

```
❯ ./make.macOSX.sh
Using gnu compiler for Inchworm and Chrysalis
cd Inchworm && /Applications/Xcode.app/Contents/Developer/usr/bin/make
mkdir -p build
cd build && cmake -DCMAKE_INSTALL_PREFIX="" ../ && make DESTDIR=../ install
-- No build type specified so building in RELEASE mode.
-- system: Darwin
-- Configuring done
-- Generating done
-- Build files have been written to: /Users/michaelfoster/sequencing/summer/clover_project/trinity/trinityrnaseq-v2.14.0/Inchworm/build
[  3%] Building CXX object CMakeFiles/inchworm.dir/src/Fasta_entry.cpp.o
clang: error: unsupported option '-fopenmp'
make[4]: *** [CMakeFiles/inchworm.dir/src/Fasta_entry.cpp.o] Error 1
make[3]: *** [CMakeFiles/inchworm.dir/all] Error 2
make[2]: *** [all] Error 2
make[1]: *** [all] Error 2
make: *** [inchworm_target] Error 2
cd trinity-plugins && /Applications/Xcode.app/Contents/Developer/usr/bin/make plugins
cd slclust && /Applications/Xcode.app/Contents/Developer/usr/bin/make CXX=g++ CC=gcc install
X=`pwd`; \
	for i in src; \
	do echo '<<<' $i '>>>'; cd $X/$i; /Applications/Xcode.app/Contents/Developer/usr/bin/make install; done
<<< src >>>
g++ -I../include -Wall    -c -o slcluster.o slcluster.cpp
In file included from slcluster.cpp:4:
../include/cmd_line_opts.h:1:9: warning: '__CMD_LINE_OPTS_H__' is used as a header guard here, followed by #define of a different macro [-Wheader-guard]
#ifndef __CMD_LINE_OPTS_H__
        ^~~~~~~~~~~~~~~~~~~
../include/cmd_line_opts.h:2:9: note: '__CMD_LiNE_OPTS_H__' is defined here; did you mean '__CMD_LINE_OPTS_H__'?
#define __CMD_LiNE_OPTS_H__
        ^~~~~~~~~~~~~~~~~~~
        __CMD_LINE_OPTS_H__
1 warning generated.
g++ -I../include -Wall    -c -o graph.o graph.cpp
g++ -I../include -Wall    -c -o graphnode.o graphnode.cpp
g++ -I../include -Wall    -c -o cmd_line_opts.o cmd_line_opts.cpp
In file included from cmd_line_opts.cpp:1:
../include/cmd_line_opts.h:1:9: warning: '__CMD_LINE_OPTS_H__' is used as a header guard here, followed by #define of a different macro [-Wheader-guard]
#ifndef __CMD_LINE_OPTS_H__
        ^~~~~~~~~~~~~~~~~~~
../include/cmd_line_opts.h:2:9: note: '__CMD_LiNE_OPTS_H__' is defined here; did you mean '__CMD_LINE_OPTS_H__'?
#define __CMD_LiNE_OPTS_H__
        ^~~~~~~~~~~~~~~~~~~
        __CMD_LINE_OPTS_H__
1 warning generated.
g++  slcluster.o graph.o graphnode.o cmd_line_opts.o  -o slclust
chmod 755 slclust
mv slclust ../bin/
cd COLLECTL && tar xvf "collectl-4.1.0".src.tar.gz && ln -sf "collectl-4.1.0" collectl
x collectl-4.1.0/
x collectl-4.1.0/service/
x collectl-4.1.0/service/collectl.service
x collectl-4.1.0/docs/
x collectl-4.1.0/docs/TheMath.html
x collectl-4.1.0/docs/RunningAsAService.html
x collectl-4.1.0/docs/Ganglia3.jpg
x collectl-4.1.0/docs/SlowProc.html
x collectl-4.1.0/docs/Tutorial-Lustre.html
x collectl-4.1.0/docs/Playback.html
x collectl-4.1.0/docs/Memory.html
x collectl-4.1.0/docs/WhySummary.html
x collectl-4.1.0/docs/Matrix.html
x collectl-4.1.0/docs/Data.html
x collectl-4.1.0/docs/Infiniband.html
x collectl-4.1.0/docs/Interrupts.html
x collectl-4.1.0/docs/style.css
x collectl-4.1.0/docs/SlabInfo.html
x collectl-4.1.0/docs/OutputFiles.html
x collectl-4.1.0/docs/Data-brief.html
x collectl-4.1.0/docs/Ganglia.jpg
x collectl-4.1.0/docs/Tutorial.html
x collectl-4.1.0/docs/Examples.html
x collectl-4.1.0/docs/colmux.html
x collectl-4.1.0/docs/Gexpr.html
x collectl-4.1.0/docs/markseger,collectl@web.sourceforge.net
x collectl-4.1.0/docs/Inodes.html
x collectl-4.1.0/docs/OperationalModes.html
x collectl-4.1.0/docs/Data-verbose.html
x collectl-4.1.0/docs/Plotfiles.html
x collectl-4.1.0/docs/Ganglia2.jpg
x collectl-4.1.0/docs/NfsInfo.html
x collectl-4.1.0/docs/InputFiles.html
x collectl-4.1.0/docs/Messages.html
x collectl-4.1.0/docs/Disks.html
x collectl-4.1.0/docs/Hello.html
x collectl-4.1.0/docs/HiResTime.html
x collectl-4.1.0/docs/Startup.html
x collectl-4.1.0/docs/Network.html
x collectl-4.1.0/docs/FAQ-collectl.html
x collectl-4.1.0/docs/Misc.html
x collectl-4.1.0/docs/slub.jpg
x collectl-4.1.0/docs/Graphite.html
x collectl-4.1.0/docs/OutputFormats.html
x collectl-4.1.0/docs/Data-detail.html
x collectl-4.1.0/docs/Sockets.html
x collectl-4.1.0/docs/Process.html
x collectl-4.1.0/docs/ColmuxCPU.jpg
x collectl-4.1.0/docs/Environmental.html
x collectl-4.1.0/docs/Socket.html
x collectl-4.1.0/docs/Export.html
x collectl-4.1.0/docs/FileNaming.html
x collectl-4.1.0/docs/Lustre.html
x collectl-4.1.0/docs/Import.html
x collectl-4.1.0/docs/Performance.html
x collectl-4.1.0/docs/Exceptions.html
x collectl-4.1.0/docs/CPUs.html
x collectl-4.1.0/docs/Logging.html
x collectl-4.1.0/docs/ColmuxLustre.jpg
x collectl-4.1.0/docs/Documentation.html
x collectl-4.1.0/docs/OpenStack.html
x collectl-4.1.0/docs/BuddyInfo.html
x collectl-4.1.0/ARTISTIC
x collectl-4.1.0/envrules.std
x collectl-4.1.0/COPYING
x collectl-4.1.0/vmsum.ph
x collectl-4.1.0/vnet.ph
x collectl-4.1.0/gexpr.ph
x collectl-4.1.0/GPL
x collectl-4.1.0/README-WINDOWS
x collectl-4.1.0/client.pl
x collectl-4.1.0/man1/
x collectl-4.1.0/man1/colmux.1
x collectl-4.1.0/man1/collectl.1
x collectl-4.1.0/vmstat.ph
x collectl-4.1.0/misc.ph
x collectl-4.1.0/initd/
x collectl-4.1.0/initd/collectl-suse
x collectl-4.1.0/initd/collectl
x collectl-4.1.0/initd/collectl-debian
x collectl-4.1.0/initd/collectl-generic
x collectl-4.1.0/collectl.conf
x collectl-4.1.0/collectl
x collectl-4.1.0/colmux
x collectl-4.1.0/INSTALL
x collectl-4.1.0/graphite.ph
x collectl-4.1.0/proctree.ph
x collectl-4.1.0/README
x collectl-4.1.0/UNINSTALL
x collectl-4.1.0/RELEASE-collectl
x collectl-4.1.0/hello.ph
x collectl-4.1.0/formatit.ph
x collectl-4.1.0/lexpr.ph
x collectl-4.1.0/statsd.ph
x collectl-4.1.0/col2tlviz.pl


** Done building plugins **


sh ./util/support_scripts/plugin_install_tests.sh
## Checking plugin installations:

slclust:                 has been Installed Properly
collectl:                has been Installed Properly
```
### F OPENMP INDEED

lets see if it worked.

```
❯ ./trinity



###############################################################################
#

     ______  ____   ____  ____   ____  ______  __ __
    |      ||    \ |    ||    \ |    ||      ||  |  |
    |      ||  D  ) |  | |  _  | |  | |      ||  |  |
    |_|  |_||    /  |  | |  |  | |  | |_|  |_||  ~  |
      |  |  |    \  |  | |  |  | |  |   |  |  |___, |
      |  |  |  .  \ |  | |  |  | |  |   |  |  |     |
      |__|  |__|\_||____||__|__||____|  |__|  |____/

    Trinity-v2.14.0


#
#
# Required:
#
#  --seqType <string>      :type of reads: ('fa' or 'fq')
#
#  --max_memory <string>      :suggested max memory to use by Trinity where limiting can be enabled. (jellyfish, sorting, etc)
#                            provided in Gb of RAM, ie.  '--max_memory 10G'
#
#  If paired reads:
#      --left  <string>    :left reads, one or more file names (separated by commas, no spaces)
#      --right <string>    :right reads, one or more file names (separated by commas, no spaces)
#
#  Or, if unpaired reads:
#      --single <string>   :single reads, one or more file names, comma-delimited (note, if single file contains pairs, can use flag: --run_as_paired )
#
#  Or,
#      --samples_file <string>         tab-delimited text file indicating biological replicate relationships.
#                                   ex.
#                                        cond_A    cond_A_rep1    A_rep1_left.fq    A_rep1_right.fq
#                                        cond_A    cond_A_rep2    A_rep2_left.fq    A_rep2_right.fq
#                                        cond_B    cond_B_rep1    B_rep1_left.fq    B_rep1_right.fq
#                                        cond_B    cond_B_rep2    B_rep2_left.fq    B_rep2_right.fq
#
#                      # if single-end instead of paired-end, then leave the 4th column above empty.
#
####################################
##  Misc:  #########################
#
#  --SS_lib_type <string>          :Strand-specific RNA-Seq read orientation.
#                                   if paired: RF or FR,
#                                   if single: F or R.   (dUTP method = RF)
#                                   See web documentation.
#
#  --CPU <int>                     :number of CPUs to use, default: 2
#  --min_contig_length <int>       :minimum assembled contig length to report
#                                   (def=200, must be >= 100)
#
#  --long_reads <string>           :fasta file containing error-corrected or circular consensus (CCS) pac bio reads
#                                   (** note: experimental parameter **, this functionality continues to be under development)
#
#  --genome_guided_bam <string>    :genome guided mode, provide path to coordinate-sorted bam file.
#                                   (see genome-guided param section under --show_full_usage_info)
#
#  --long_reads_bam <string>       :long reads to include for genome-guided Trinity
#                                  (bam file consists of error-corrected or circular consensus (CCS) pac bio read aligned to the genome)
#
#  --jaccard_clip                  :option, set if you have paired reads and
#                                   you expect high gene density with UTR
#                                   overlap (use FASTQ input file format
#                                   for reads).
#                                   (note: jaccard_clip is an expensive
#                                   operation, so avoid using it unless
#                                   necessary due to finding excessive fusion
#                                   transcripts w/o it.)
#
#  --trimmomatic                   :run Trimmomatic to quality trim reads
#                                        see '--quality_trimming_params' under full usage info for tailored settings.
#
#  --output <string>               :name of directory for output (will be
#                                   created if it doesn't already exist)
#                                   default( your current working directory: "/Users/michaelfoster/sequencing/summer/clover_project/trinity/trinityrnaseq-v2.14.0/trinity_out_dir"
#                                    note: must include 'trinity' in the name as a safety precaution! )
#
#  --full_cleanup                  :only retain the Trinity fasta file, rename as ${output_dir}.Trinity.fasta
#
#  --cite                          :show the Trinity literature citation
#
#  --verbose                       :provide additional job status info during the run.
#
#  --version                       :reports Trinity version (Trinity-v2.14.0) and exits.
#
#  --show_full_usage_info          :show the many many more options available for running Trinity (expert usage).
#
#
###############################################################################
#
#  *Note, a typical Trinity command might be:
#
#        Trinity --seqType fq --max_memory 50G --left reads_1.fq  --right reads_2.fq --CPU 6
#
#            (if you have multiple samples, use --samples_file ... see above for details)
#
#    and for Genome-guided Trinity, provide a coordinate-sorted bam:
#
#        Trinity --genome_guided_bam rnaseq_alignments.csorted.bam --max_memory 50G
#                --genome_guided_max_intron 10000 --CPU 6
#
#     see: /Users/michaelfoster/sequencing/summer/clover_project/trinity/trinityrnaseq-v2.14.0/sample_data/test_Trinity_Assembly/
#          for sample data and 'runMe.sh' for example Trinity execution
#
#     For more details, visit: http://trinityrnaseq.github.io
#
###############################################################################
```
# WOO Looks like it worked!! 
lets try some test data.
```
❯ cd sample_data
❯ ls
Makefile              test_Trinity_Assembly
❯ cd test_Trinity_Assembly
❯ ls
Makefile                  longReads.fa              reads.right.fa.gz         runMe.sh
README                    misc_run_tests            reads.right.fq.gz         samples.PE.txt
__indiv_ex_sample_derived reads.left.fa.gz          reads2.left.fq.gz         samples.SE.txt
cleanme.pl                reads.left.fq.gz          reads2.right.fq.gz        test_FL.sh
❯ cat runMe.sh
#!/bin/bash -ve

#######################################################
##  Run Trinity to Generate Transcriptome Assemblies ##
#######################################################

if [ -z ${TRINITY_HOME} ]; then
    echo "Must set env var TRINITY_HOME"
    exit 1
fi


${TRINITY_HOME}/Trinity --seqType fq --max_memory 2G \
              --left reads.left.fq.gz \
              --right reads.right.fq.gz \
              --SS_lib_type RF \
              --CPU 1

##### Done Running Trinity #####

if [ $* ]; then
    # check full-length reconstruction stats:

    ${TRINITY_HOME}/util/misc/illustrate_ref_comparison.pl __indiv_ex_sample_derived/refSeqs.fa trinity_out_dir.Trinity.fasta 90

    ./test_FL.sh --query  trinity_out_dir.Trinity.fasta --target __indiv_ex_sample_derived/refSeqs.fa --no_reuse

fi
```
Okay lets run the "Run me" script.
```
❯ ./runMe.sh
#!/bin/bash -ve

#######################################################
##  Run Trinity to Generate Transcriptome Assemblies ##
#######################################################

if [ -z ${TRINITY_HOME} ]; then
    echo "Must set env var TRINITY_HOME"
    exit 1
fi
Must set env var TRINITY_HOME
```
ugh.
I don't want to have to use docker.....
Just let me install it from source ffs.
Okay, lets see if the var is set properly.
```
❯ echo $TRINITY_HOME
/Users/michaelfoster/sequencing/summer/clover_project/trinity/trinityrnaseq-v2.14.0
```
looks to be in order.
lets not run the shell script and insted run the piece of the script to keep from falling into subshell hell...
```
${TRINITY_HOME}/Trinity --seqType fq --max_memory 2G \
--left reads.left.fq.gz \
--right reads.right.fq.gz \
--SS_lib_type RF \
--CPU 1
```
okay ran the above and got this output:
```
❯ ${TRINITY_HOME}/Trinity --seqType fq --max_memory 2G \
--left reads.left.fq.gz \
--right reads.right.fq.gz \
--SS_lib_type RF \
--CPU 1


	Error, cannot locate Trinity-specific tool: ParaFly in the PATH setting: /Users/michaelfoster/sequencing/summer/clover_project/trinity/trinityrnaseq-v2.14.0/trinity-plugins/BIN:/opt/homebrew/Caskroom/miniforge/base/envs/CloverRNASeq/bin:/opt/homebrew/opt/openjdk/bin:/Users/michaelfoster/scripts:/opt/homebrew/Caskroom/miniconda/base/condabin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/Users/michaelfoster/bin:/Users/michaelfoster/bin:/usr/local/include:/usr/local/lib,  be sure to install Trinity by running 'make' in the base installation directory
```
---I GUESS ITS TIME FOR ROSETTA TERM!!!--- no. will make this sand bend to my will.
https://mac.r-project.org/openmp/
I need openMP anyways.
time to break my cmake.
### from the above link
OpenMP run-time downloads
The follwing are links to libomp OpenMP run-time built from official LLVM release sources using Xcode compilers. They are signed and support macOS 10.13 (High Sierra) and higher. All tar-balls contain the system tree usr/local/lib and usr/local/include so the recommended installation is:
    curl -O https://mac.r-project.org/openmp/openmp-12.0.1-darwin20-Release.tar.gz
    sudo tar fvxz openmp-12.0.1-darwin20-Release.tar.gz -C /
The contained set of files is the same in all tar balls:
    usr/local/lib/libomp.dylib
    usr/local/include/ompt.h
    usr/local/include/omp.h
    usr/local/include/omp-tools.h
so you can simply remove those to uninstall. Note that any package you compile against libomp.dylib will need that run-time so you have to ship it with your package or have users install it. You can verify the signature in the library via codetool (see below).

okay neat.

```
❯ cd ~
❯ curl -O https://mac.r-project.org/openmp/openmp-12.0.1-darwin20-Release.tar.gz
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  514k  100  514k    0     0   499k      0  0:00:01  0:00:01 --:--:--  501k
```
now for line two:
```
#sudo tar fvxz openmp-12.0.1-darwin20-Release.tar.gz -C /
❯ sudo tar fvxz openmp-12.0.1-darwin20-Release.tar.gz -C /
Password:
x usr/local/include/omp-tools.h
x usr/local/include/omp.h
x usr/local/include/ompt.h
x usr/local/lib/libomp.dylib
```
okay lets verify it now
```
❯ codesign -d -vv /usr/local/lib/libomp.dylib
Executable=/usr/local/lib/libomp.dylib
Identifier=libomp
Format=Mach-O universal (x86_64 arm64)
CodeDirectory v=20400 size=5354 flags=0x0(none) hashes=162+2 location=embedded
Signature size=8926
Authority=Developer ID Application: Simon Urbanek (VZLD955F6P)
Authority=Developer ID Certification Authority
Authority=Apple Root CA
Timestamp=Nov 10, 2021 at 18:15:26
Info.plist=not bound
TeamIdentifier=VZLD955F6P
Sealed Resources=none
Internal requirements count=1 size=168
```
fantastic. lets try making trinity now.

