# Fast QC notes

okay, so fastQC can be used in scripts.

per documentation at:
<https://www.bioinformatics.babraham.ac.uk/projects/fastqc/>

documentation at:
<https://www.bioinformatics.babraham.ac.uk/projects/fastqc/Help/>

installation specific documentation at:
<https://www.bioinformatics.babraham.ac.uk/projects/fastqc/INSTALL.txt>

downloaded zip folder and moved to bioinformatics directory.
decompressed it and then made the fastqc binary executable.

```bash
chmod 755 fastqc
```

okay cool. now lets see if we can feed it the illumina data from the clover run.

well first, lets plan out the script to load all of the reads. I may have to un-gzip all of the files.

so:

1. decompress all fastq files
2. copy directory structure into output folder for fastQC reports.
3. feed sample directory containing reads into fastQC
4. output report into corresponding directory in output
5. move onto next sample directory
6. ???
7. profit

okay lets add it to path now so the script won't be wonky.

```bash
❯ readlink -f fastqc
/Users/michaelfoster/bioinformatics/FastQC/fastqc
❯ sudo ln -s /Users/michaelfoster/bioinformatics/FastQC/fastqc /usr/local/bin/fastqc
```

cool, that works everywhere now.

okay, so the script is gonna be something like

1. get paths of source
2. take paths as input, create paths in target

```bash
treePeat $1
#!/bin/sh
WORKDIR="$PWD"
SOURCEDIR="$1";
echo"using $1 as source and copying directory structure into ../fastQC_reports"
echo"creating directory for fastQC output"
cd $WORKDIR &&  mkdir ../fastQC_reports
echo"copying directory structure of $METADIR into $TARGETDIR"
tree -dfi --noreport $SOURCEDIR | xargs -I{} mkdir -p "../fastQC_reports/{}"
...
```

okay lets make that into a script file and try it on a test directory.

update: 6/9/22: it works.
