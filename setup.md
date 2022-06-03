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
downloaded package: trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
https://github.com/trinityrnaseq/trinityrnaseq/releases/download/Trinity-v2.14.0/trinityrnaseq-v2.14.0.FULL_with_extendedTestData.tar.gz
```

```
