okay lets install this from the github.
<https://github.com/BioInfoTools/BBMap/blob/master/README.md>

It wants java installed via brew, already done.
so lets clone the repo and then follow the compiling instructions.

```
❯ ghclone BioInfoTools BBMap
running script to clone BioInfoTools/BBMap into local BBMap
Cloning into 'BBMap'...
remote: Enumerating objects: 3570, done.
remote: Counting objects: 100% (1175/1175), done.
remote: Compressing objects: 100% (1012/1012), done.
remote: Total 3570 (delta 245), reused 749 (delta 156), pack-reused 2395
Receiving objects: 100% (3570/3570), 9.08 MiB | 4.25 MiB/s, done.
Resolving deltas: 100% (1972/1972), done.
newly cloned BBMap is now present
```
okay now lets attempt compilation.
```
❯ cd BBMap
❯ ls
BB_User-Meeting-2014-poster-FINAL.pdf config                                pipelines
README.md                             current                               pytools
bbmap-help-Biostar.md                 docs                                  resources
bitbucket-pipelines.yml               jni                                   sh
build.xml                             license.txt
❯ cd jni
❯ ls
BBMergeOverlapper.c               MultiStateAligner11tsJNI.c        libbbtoolsjni.dylib
BBMergeOverlapper.o               MultiStateAligner11tsJNI.o        libbbtoolsjni.so
BandedAlignerJNI.c                README.txt                        makefile.linux
BandedAlignerJNI.o                align2_BandedAlignerJNI.h         makefile.osx
CMakeLists.txt                    align2_MultiStateAligner11tsJNI.h run.sh
IceCreamAlignerJNI.c              icecream_IceCreamAlignerJNI.h
IceCreamAlignerJNI.o              jgi_BBMergeOverlapper.h
❯ JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home make -f makefile.osx
make: `libbbtoolsjni.dylib' is up to date.
```
okay so that works.
now lets make sure open-mpi is installed.
```
❯ brew install --with-java open-mpi
Usage: brew install [options] formula|cask [...]

Install a formula or cask. Additional options specific to a formula may be
appended to the command.

Unless HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK is set, brew upgrade or brew
reinstall will be run for outdated dependents and dependents with broken
linkage, respectively.

Unless HOMEBREW_NO_INSTALL_CLEANUP is set, brew cleanup will then be run for
the installed formulae or, every 30 days, for all formulae.

Unless HOMEBREW_NO_INSTALL_UPGRADE is set, brew install formula will
upgrade formula if it is already installed but outdated.

  -d, --debug                      If brewing fails, open an interactive
                                   debugging session with access to IRB or a
                                   shell inside the temporary build directory.
  -f, --force                      Install formulae without checking for
                                   previously installed keg-only or non-migrated
                                   versions. When installing casks, overwrite
                                   existing files (binaries and symlinks are
                                   excluded, unless originally from the same
                                   cask).
  -v, --verbose                    Print the verification and postinstall steps.
      --formula, --formulae        Treat all named arguments as formulae.
      --ignore-dependencies        An unsupported Homebrew development flag to
                                   skip installing any dependencies of any kind.
                                   If the dependencies are not already present,
                                   the formula will have issues. If you're not
                                   developing Homebrew, consider adjusting your
                                   PATH rather than using this flag.
      --only-dependencies          Install the dependencies with specified
                                   options but do not install the formula
                                   itself.
      --cc                         Attempt to compile using the specified
                                   compiler, which should be the name of the
                                   compiler's executable, e.g. gcc-7 for GCC
                                   7. In order to use LLVM's clang, specify
                                   llvm_clang. To use the Apple-provided
                                   clang, specify clang. This option will only
                                   accept compilers that are provided by
                                   Homebrew or bundled with macOS. Please do not
                                   file issues if you encounter errors while
                                   using this option.
  -s, --build-from-source          Compile formula from source even if a
                                   bottle is provided. Dependencies will still
                                   be installed from bottles if they are
                                   available.
      --force-bottle               Install from a bottle if it exists for the
                                   current or newest version of macOS, even if
                                   it would not normally be used for
                                   installation.
      --include-test               Install testing dependencies required to run
                                   brew test formula.
      --HEAD                       If formula defines it, install the HEAD
                                   version, aka. main, trunk, unstable, master.
      --fetch-HEAD                 Fetch the upstream repository to detect if
                                   the HEAD installation of the formula is
                                   outdated. Otherwise, the repository's HEAD
                                   will only be checked for updates when a new
                                   stable or development version has been
                                   released.
      --keep-tmp                   Retain the temporary files created during
                                   installation.
      --build-bottle               Prepare the formula for eventual bottling
                                   during installation, skipping any
                                   post-install steps.
      --bottle-arch                Optimise bottles for the specified
                                   architecture rather than the oldest
                                   architecture supported by the version of
                                   macOS the bottles are built on.
      --display-times              Print install times for each package at the
                                   end of the run.
  -i, --interactive                Download and patch formula, then open a
                                   shell. This allows the user to run
                                   ./configure --help and otherwise determine
                                   how to turn the software package into a
                                   Homebrew package.
  -g, --git                        Create a Git repository, useful for creating
                                   patches to the software.
      --overwrite                  Delete files that already exist in the prefix
                                   while linking.
      --cask, --casks              Treat all named arguments as casks.
      --[no-]binaries              Disable/enable linking of helper executables
                                   (default: enabled).
      --require-sha                Require all casks to have a checksum.
      --[no-]quarantine            Disable/enable quarantining of downloads
                                   (default: enabled).
      --skip-cask-deps             Skip installing cask dependencies.
      --zap                        For use with brew reinstall --cask. Remove
                                   all files associated with a cask. May remove
                                   files which are shared between applications.
      --appdir                     Target location for Applications (default:
                                   /Applications).
      --colorpickerdir             Target location for Color Pickers (default:
                                   ~/Library/ColorPickers).
      --prefpanedir                Target location for Preference Panes
                                   (default: ~/Library/PreferencePanes).
      --qlplugindir                Target location for QuickLook Plugins
                                   (default: ~/Library/QuickLook).
      --mdimporterdir              Target location for Spotlight Plugins
                                   (default: ~/Library/Spotlight).
      --dictionarydir              Target location for Dictionaries (default:
                                   ~/Library/Dictionaries).
      --fontdir                    Target location for Fonts (default:
                                   ~/Library/Fonts).
      --servicedir                 Target location for Services (default:
                                   ~/Library/Services).
      --input-methoddir            Target location for Input Methods (default:
                                   ~/Library/Input Methods).
      --internet-plugindir         Target location for Internet Plugins
                                   (default: ~/Library/Internet Plug-Ins).
      --audio-unit-plugindir       Target location for Audio Unit Plugins
                                   (default:
                                   ~/Library/Audio/Plug-Ins/Components).
      --vst-plugindir              Target location for VST Plugins (default:
                                   ~/Library/Audio/Plug-Ins/VST).
      --vst3-plugindir             Target location for VST3 Plugins (default:
                                   ~/Library/Audio/Plug-Ins/VST3).
      --screen-saverdir            Target location for Screen Savers (default:
                                   ~/Library/Screen Savers).
      --language                   Comma-separated list of language codes to
                                   prefer for cask installation. The first
                                   matching language is used, otherwise it
                                   reverts to the cask's default language. The
                                   default value is the language of your system.
  -q, --quiet                      Make some output more quiet.
  -h, --help                       Show this message.
Error: invalid option: --with-java
```
"">:(
update: https://github.com/Homebrew/homebrew-core/issues/26009
okay so whatever, lets procede as if it isn't going to be broken (:

<https://sourceforge.net/projects/bbmap/>
official source ^

okay lets NOT build from source and just use the .jar executable.

anyways.

now to BBDuk.

```
❯ cat README.md
# BBTools bioinformatics tools, including BBMap.
# Author: Brian Bushnell, Jon Rood, Shijie Yao, Jasper Toscani Field
# Language: Java, Bash
# Information about documentation is in /docs/readme.txt.

# Version 38.96
```
okay fine.
```
❯ cat readme.txt
BBMap/BBTools readme
Written by Brian Bushnell
Last updated January 2, 2018

The BBTools package is primarily devloped by Brian Bushnell, with some optional JNI and MPI components written by Jonathan Rood.
Some parts have also been written or modified by Shijie Yao, Alex Copeland, and Bryce Foster.


Citation:

Please see citation.txt


License:

The BBTools package is open source and free to use with no restrictions.  For more information, please read Legal.txt and license.txt.


Documentation:

Documentation is in the /bbmap/docs/ directory, and in each tool's shellscript in /bbmap/.
readme.txt: This file.
UsageGuide.txt: Contains basic installation and usage information.  Please read this first!
ToolDescriptions.txt: Contains a list of many BBTools, a description of what they do, and their hardware requirements.
compiling.txt: Information on compiling JNI code.
readme_config.txt: Usage information about config files.
readme_filetypes.txt: More detailed information on file formats supported by BBTools.
changelog.txt: List of changes by version, and current known issues.


Tool-specific Guides:

Some tools have specific guides, like BBDukGuide.txt.  They are in /bbmap/docs/guides/.  For complete documentation of a tool, I recommend that you read UsageGuide.txt first (which covers the shared functionality of all tools), then the tool's specific guide if it has one (such as ReformatGuide.txt), then the tool's shellscript (such as reformat.sh) which lists all of the flags.


Pipelines:

/bbmap/pipelines/ contains shellscripts.  These are different than the ones in /bbmap/, which are wrappers for specific tools.  The pipelines do not print a help message and do not accept any arguments.  They are given to provide examples of the command lines and order of tools used to accomplish specific tasks.


Resources:

/bbmap/resources/ contains various data files.  Most are fasta contaminant sequences.  For more information see /bbmap/resources/contents.txt.

If you have any questions not answered in the documentation, please look at the relevant SeqAnswers thread (linked from here: http://seqanswers.com/forums/showthread.php?t=41057) and post a question there if it is not already answered.  You can also contact JGI's BBTools team at bbtools@lbl.gov, or me at bbushnell@lbl.gov.  But please read the documentation first.

Special thanks for help with shellscripts goes to:
Alex Copeland (JGI), Douglas Jacobsen (JGI/NERSC), Bill Andreopoulos (JGI), sdriscoll (SeqAnswers), Jon Rood (JGI/NERSC), and Elmar Pruesse (UC Denver).

Special thanks for helping to support BBTools goes to Genomax (SeqAnswers).
```
okay fine, now lets look at the bbduk guide.

```
❯ cat BBDukGuide.txt
BBDuk Guide
Written by Brian Bushnell
Last updated December 14, 2015

"Duk" stands for Decontamination Using Kmers. BBDuk was developed to combine most common data-quality-related trimming, filtering, and masking operations into a single high-performance tool.  It is capable of quality-trimming and filtering, adapter-trimming, contaminant-filtering via kmer matching, sequence masking, GC-filtering, length filtering, entropy-filtering, format conversion, histogram generation, subsampling, quality-score recalibration, kmer cardinality estimation, and various other operations in a single pass.  Specifically, any combination of operations is possible in a single pass, with the exception of kmer-based operations (kmer trimming, kmer masking, or kmer filtering); at most 1 kmer-based operation can be done in a single pass.  BBDuk2 allows multiple kmer-based operations in a single pass, and is otherwise equivalent to BBDuk.

BBDuk's parameters are described in its shellscript (bbduk.sh).  This file provides usage examples of various common tasks.


*Notes*


Paired reads:

Paired reads interleaved in a single file will be autodetected based on their names; this can be overridden with the "interleaved" flag.  The commands in this document assume either single-ended reads or paired reads in a single file.  BBDuk also supports input or output of paired reads in dual files using the in1, in2, out1, and out2 flags, for example:

bbduk.sh in1=read1.fq in2=read2.fq out1=clean1.fq out2=clean2.fq

When dealing with paired reads in 2 files they should always be processed together, not one at a time.  Pairs are always kept together - either both reads are kept, or both are discarded.


Kmer-processing modes:

If a reference is specified, BBDuk will operate on kmers in one of 4 modes: right-trimming, left-trimming, masking, or filtering.  The default is filtering - any read matching a reference kmer will be discarded.  In order to kmer-trim, the flag "ktrim=r" or "ktrim=l" must be used.  In ktrim=r mode, once a reference kmer is matched in a read, that kmer and all the bases to the right will be trimmed, leaving only the bases to the left; this is the normal mode for adapter trimming.  For ktrim=l, trimming will be done to the left instead.  "kmask=N" will, rather than trimming, convert all bases covered by reference kmers to N (or some other symbol).  BBDuk2 can operate in all 4 modes at once.


Memory:

BBDuk's shellscript will try to autodetect the available memory and use about half of it.  You can override this with with the -Xmx flag, e.g. "bbduk.sh -Xmx1g in=reads.fq".  That command will force it to use 1 GB.  Most operations such as adapter-trimming and quality-trimming need only a tiny amount of memory.  Only processing large references, or using a high value of "hdist" or "edist", actually need a lot of memory.  The only factor determining how much memory BBDuk needs is the number of reference kmers stored, which is linearly proportional to the size of the reference.  So, if you are not going to be using a reference, or only a small reference, you can add the flag -Xmx1g.  If you will using a large reference, modify that flag to be around 85% of the machine's physical memory - for example, -Xmx27g on a 32GB machine.  The actual maximum you can use depends on the operating system's configuration.


Kmers, hdist, qhdist, and edist:

A 4.6Mbp genome like E.coli contains around 4.6 million unique kmers.  If a hamming distance is used, such as hdist=1, then the number of kmers stored will be multiplied by 1+(3*k)^hdist.  So, for E.coli with K=31 and hdist=0, there are 4554207 kmers stored, using around 140MB, taking about 0.5 seconds; with hdist=1, there are 427998710 kmers stored (94 times as many), using 15GB, and taking 104 seconds.  Edit distance creates even more kmers, at 1+(8*k)^edist.  BBDuk needs around 20 bytes per kmer; it is possible to store them more efficiently by adding the flag "prealloc".  But, if you need to use a hamming distance and the machine simply does not have enough memory, you can use "qhdist" instead, which mutates the read (query) kmers instead of the reference kmers.  This makes the read processing much slower, but does not use additional memory.


Mink:

When you set K=25, BBDuk will store all 25-mers in the reference, and try to match them against 25-mers in the queries (reads).  However, for adapter-trimming, this may not be desirable - for example, if the last 12bp of a read are adapter sequence, it will not match a reference 25-mer, because it is too short.  "mink=8" will additionally look for shorter kmers with lengths 24 to 8 (in this case).  For the query, these kmers will only come from the end of the read - for example, with "ktrim=r", they will only be taken from the right end.  So all 25-mers will be used from the read, plus a single 24-mer of the last 24 bases, a single 23-mer, etc. down to a single 8-mer, the last 8 bases.  The reference short kmers will also come only from the ends of reference sequences, but they will come from both ends (so a single reference sequence would yield two 8-mers, the leftmost one and the rightmost one.  Mink works for kmer-trimming and kmer-masking, but not for kmer-filtering.


Hdist2, edist2, and qhdist2

Because they are shorter, the appropriate hamming distance may differ for short kmers generated with the mink flag.  For primary kmers, K=25 has a very high high specificity; a given 25-mer has a 1/1125899906842624 chance of matching random sequence (meaning you will never see this happen).  Even with hdist=3, the chance is increased to ~1/18130433280 (still very low).  However, k=8 only has a 1/65536 chance at hdist=0, becoming a 1/36 chance at hdist=3, which would yield too many false positives for most uses.  For that reason, with a small value of mink, it is useful to independently control the hamming/edit distance.  hdist2, edist2, and qhdist2 are analagous to hdist, edist, and qhdist, but are only applied to kmers shorter than the normal kmer length.
If hdist is set and hdist2 is not set, hdist will control the hamming distance for all kmers, short and long.  If both are set, then hdist will control the hamming distance for full-length kmers, and hdist2 will control it for short kmers; and etc.


Kmer length:

BBDuk supports kmers of length 1-31.  The longer a kmer, the high the specificity; except in certain highly-conserved areas (such as ribosomes), or in very low-complexity areas (like ATATATAT...), it is very unlikely for two unrelated organisms to share a 31-mer.  Note that it is impossible to do kmer matching for reference sequences that are shorter than K.  When kmer filtering, you can specify a kmer length greater than 31 (such as k=40) for even higher specificity.  For k=40, BBDuk will consider a read to match the reference if there are 10 consecutive 31-mer matches.  This is not exactly the same as actually matching 40-mers, but is very similar.


Kmer skipping:

To reduce memory or increase speed, it is possible to ignore some reference or query kmers.  This can be done with the rskip, qskip, or speed flags (do not use more than one at a time).  rskip=4, for example, will only store every 4th reference kmer, saving memory.  qskip=4 will only look up every 4th query kmer, increasing speed.  The speed flag is a bit different.  speed=X, where X runs from 0 to 15, will ignore X/16 of the kmers in both the read and reference, and the same ones will be ignored in each case.  So, it reduces memory and increases speed.  The highest setting, speed=15, will ignore 15/16.  Any of these will reduce sensitivity, but often it is a useful tradeoff for being able to fit the dataset in memory.  Be cautious about combining these flags with flags that change the number of required kmer hits for a match.


Number of kmer hits:

By default, a read is considered to match the reference if they share a single kmer.  This can be changed with the flag "mkh" (minkmerhits), or overridden with "mkf" (minkmerfraction) or "mcf" (mincoveredfraction).  For example, "mkh=2" would require 2 kmer hits to consider a read as matching; "mkf=0.5" would require 50% of the kmers to match; and "mcf=0.5" would require 50% of the bases to be covered by reference kmers.  "mcf" is probably more stable than "mkf", because a single error can knock out a lot of kmers, but it will only knock out 1 base.  So, with a 100bp read that should match the reference, and a single error right in the middle, 99% of the bases would be covered by kmers matching the reference.  But, the read has 100-31+1=70 kmers; of those, 31 have an error, so they won't match the reference.  Thus, only 39/70 or 56% of the kmers match the reference.


Maskmiddle and rcomp:

By default, BBDuk has maskmiddle and rcomp set to true.  Maskmiddle ignores the middle base of a kmer, which increases sensitivity.  Rcomp looks for kmers and their reverse-complements, rather than just forward kmers.  However, sometime this confuses people when BBDuk reports that a sequence matches some reference, but using some tool like "Grep", they can't find any shared kmers.  This is usually caused by maskmiddle and/or rcomp.  So if you only want exact matches, disable maskmiddle ("mm=f" flag); and if you only want to match forward kmers, disable rcomp ("rcomp=f" flag).  Specifically, "rcomp=f" will store all the forward kmers in the reference, in their forward orientation, and it will only consider kmers to match if that also occurs in the forward orientation in a read.


Seal and kmers in multiple references:

BBDuk associates each kmer with a single number.  Specifically, if a kmer appears in the first reference sequence, that kmer is associated with the number 1; kmers from a second reference sequence will be associated with the number 2, etc.  If two reference sequences contain the same kmer, the kmer will only be associated with the first reference.  Therefore, when reporting statistics about how many reads matched which reference sequence, these statistics may not be correct in situations where two reference sequences contain identical sequence.  For example, with 2 different E.coli strains, the vast majority of reads would probably be reported as matching the first E.coli strain rather than the second, since they share so many kmers.  In this kind of situation, if accurate statistics tracking is important, it is better to use Seal instead of BBDuk.  Seal can associate each kmer with arbitrarily many different references.


Threads:

BBDuk operates in 2 phases.  Phase 1 is loading the reference kmers (if you specified a reference).  This uses a fixed number of threads, currently 7, which cannot be changed (except by editing the "WAYS=7" line in BBDuk's source code and recompiling).  With a small reference such as adapter sequences or a bacterial genome, this phase will take under a second.  The second phase will autodetect and use all available processors, unless restricted with the "t" flag; for example, t=1 will restrict it to a single worker thread.  BBDuk scales very well, so unless you are on a shared node, it's best to just let it use all threads.  When multiple threads are used, reads will not come out in the same order the went in, unless the "ordered" flag is used.


Output streams:

BBDuk has 3 standard output streams, "out", "outm", and "outs".  None are required; any or all may be used.  "out" (aka "outu" or "outunmatched") will get all the reads that pass all filtering criteria.  That means that after any trimming operations, reads must be at least as long as minlen; and if kmer-filtering is being performed, the read must not match any reference kmer; if a minimum average quality is specified, the read's average quality must be at least that high; etc.  Reads failing any filter criteria (such as matching a reference kmer) will go to "outm" ("outmatch").  So, every read will go either "out" or "outm".  By default, if either read in a pair fails, both will go to "outm"; this can be inverted with the "rieb" flag (remove if either bad).  "rieb=f" will make paired reads go to "outm" only if BOTH fail filter criteria.  If you want to retain singleton reads the pass filter when their mate failed, use "outs" (outsingle).  For example:

bbduk.sh in=pairs.fq out=pass_pairs.fq outm=fail_pairs.fq outs=pass_singletons.fq ref=contam.fasta

In this case, pairs in which neither read matches the reference will go to pass_pairs.fq.  Pairs in which either read or both match the reference will go to fail_pairs.fq.  And if one read matches the reference but the other one does not, the read not matching the reference will go to pass_singletons.fq (in addition to fail_pairs.fq).


Preprocessing steps and order:

To preprocess raw sequence data with BBDuk, I recommend a specific order; please see PreprocessingGuide for details, or /pipelines/variantPipeline.sh and assemblyPipeline.sh for examples.


BBDuk internal order of operations:

BBDuk supports all operations in a single pass, other than the mutually-exclusive kmer-based operation (kfilter, kmask, ktrim=r, ktrim=l).  After every trimming phase the length is checked and the reads are discarded as soon as they drop below min length, ignoring subsequent stages.
This order of operations seems optimal for most situations.  However, if you need a different order of operations, you can do so via multiple passes.

0) histograms and cardinality estimation are done on raw reads
1) header filtering (chastity, location, barcode, etc)
2) quality recalibration
3) GC filter
4) ftl/ftr/ftm
5) ktrim/kmask/kfilter
6) trim by overlap
7) poly-A trim
8) entropy mask
9) qtrim and trim soft-clipping
10) maq and maxNs
11) entropy filter


*Usage Examples*

Adapter trimming:
bbduk.sh in=reads.fq out=clean.fq ref=adapters.fa ktrim=r k=23 mink=11 hdist=1 tpe tbo

(if your data is very low quality, you may wish to use more sensitive settings of hdist=2 k=21)

...where "ktrim=r" is for right-trimming (3' adapters), and "ktrim=l" is for left-trimming (5' adapters). "k" specifies the kmer size to use (must be at most the length of the adapters) while "mink" allows it to use shorter kmers at the ends of the read (for example, k=11 for the last 11 bases). "hdist" means "hamming distance"; this allows one mismatch. Instead of "ref=file" you can alternately (or additionally) say "literal=ACTGGT,TTTGGTG" for those two literal strings. The BBTools package currently includes Illumina Truseq and Nextera adapters sequences in /bbmap/resources/adapters.fa. You can specify whether or not BBDuk looks for the reverse-complement of the reference sequences as well as the forward sequence with the flag "rcomp=t" or "rcomp=f"; by default it looks for both. You can also restrict kmer operations such as adapter-trimming to only read 1 or read 2 with the "skipr1" or "skipr2" flags, or restrict them to the leftmost or rightmost X bases of a read with the restrictleft or restrictright flags. For normal paired-end fragment libraries, I recommend adding the flags "tbo", which specifies to also trim adapters based on pair overlap detection using BBMerge (which does not require known adapter sequences), and "tpe", which specifies to trim both reads to the same length (in the event that an adapter kmer was only detected in one of them).


Quality trimming:
bbduk.sh in=reads.fq out=clean.fq qtrim=r trimq=10

This will quality-trim to Q10 using the Phred algorithm, which is more accurate than naive trimming. "qtrim=r" means it will trim the right side only; you can alternatively set "qtrim=l" for left or "qtrim=rl" for both.  If quality trimming is enabled, it happens after all kmer-based operations.


Force-Trimming:
bbduk.sh in=reads.fq out=clean.fq ftl=10 ftr=139

This will trim the leftmost 10 bases (ftl=10) and also trim the right end after to position 139 (zero-based).  The resulting read would be 130bp long.  For example, a 150bp read would have the first 10 bases trimmed (bases 0-9, keeping 10+) and the last 10 bases trimmed (bases 140-149, keeping 139 and lower).


Force-Trim Modulo:
bbduk.sh in=reads.fq out=clean.fq ftm=5

The right end so that the read's length is equal to zero modulo 5 (ftm=5).  The reason for this is that with Illumina sequencing, normal runs are usually a multiple of 5 in length (50bp, 75bp, 100bp, etc), but sometimes they are generated with an extra base (51bp, 76bp, 151bp, etc).  This last base is very inaccurate and has badly calibrated quality as well, so it's best to trim it before doing anything else.  But you don't want to simply always trim the last base, because sometimes the last base will already be clipped by Illumina's software.  "ftm=5" will, for example, convert a 151bp read to 150bp, but leave a 150bp read alone.


Quality filtering:
bbduk.sh in=reads.fq out=clean.fq maq=10

This will discard reads with average quality below 10.  If quality-trimming is enabled, the average quality will be calculated on the trimmed read.


Kmer filtering:
bbduk.sh in=reads.fq out=unmatched.fq outm=matched.fq ref=phix.fa k=31 hdist=1 stats=stats.txt

This will remove all reads that have a 31-mer match to PhiX (a common Illumina spikein, which is included in /bbmap/resources/), allowing one mismatch. The "outm" stream will catch reads that matched a reference kmers. This allows you to split a set of reads based on the presence of something. "stats" will produce a report of which contaminant sequences were seen, and how many reads had them.


Kmer masking:
bbduk.sh in=ecoli.fa out=ecoli_masked.fa ref=salmonella.fa k=25 kmask=N

This will mask all 25-mers in E.coli that are also shared by Salmonella, by converting them to N. You can change them to some other letter instead, like X.  Alternatively, kmask=lc will convert the masked bases to lowercase.


Entropy filtering:
bbduk.sh in=reads.fq out=filtered.fq entropy=0.5 entropywindow=50 entropyk=5

This will filter out reads that have an average entropy of under 0.5.  This is a measure of read complexity and varies from 0 to 1.  A homopolymer such as AAAAAAAAAAAAAA would have entropy of zero; completely random sequence would have entropy approaching 1.


Quality recalibration:
bbduk.sh in=reads.fq out=recalibrated.fq recalibrate sam=mapped.sam

This will recalibrate quality scores to be more accurate, using the mapping information from the sam file provided.  If matrix files have already been generated from a mapped sam or bam file of the reads using CalcTrueQuality, then the sam flag should not be used.  The sam file must have cigar strings with = and X symbols for match and mismatch, like BBMap produces, rather than M for match or mismatch.  The sam file does not need to contain the same reads as the input - it just has to be mapped reads from the same sequencing run and lane.  So, for example, if you spike in E.coli reads and some unknown organism, you can map the E.coli reads to the E.coli reference and recalibrate all the reads with the mapped E.coli, since you don't have a reference for the unknown organism.  Alternately, you can assemble the reads with something like Tadpole and map against that.  For accurate recalibration, it's best to map against a haploid genome, or an inbred diploid with a low (<1/4000) het rate.


Histogram generation:
bbduk.sh in=reads.fq bhist=bhist.txt qhist=qhist.txt gchist=gchist.txt aqhist=aqhist.txt lhist=lhist.txt gcbins=auto

This will generate histograms of various aspects of the reads - base frequency, quality scores, gc content, average quality, and length.  BBMap can generate even more histograms by using mapping information (such as quality accuracy and indel length); BBDuk can also generate these histograms if it is fed a sam file in which the cigar strings use = and X to denote match and mismatch.


Barcode and chastity filtering:
bbduk.sh in=reads.fq out=filtered.fq barcodes=ACGTT,GGCCG barcodefilter chastityfilter

This will remove reads that fail Illumina chastity filtering, or have barcodes that do not exactly match the list provided.  The ability to process these depends on Illumina's header format, which can change between software versions and platforms.


Cardinality estimation:
bbduk.sh in=reads.fq loglog loglogk=31

This will generate an accurate estimation of the number of unique kmers in the dataset using the LogLog algorithm, requiring very little memory.  There is no upper bound for this kmer length.  Note that "k=" and "loglogk=" are completely unrelated.


Matching degenerate sequences such as primers:
bbduk.sh in=reads.fq out=matching.fq literal=ACGTTNNNNNGTC copyundefined k=13 mm=f

This will clone the reference sequences to represent every possibility for the degenerate bases (Ns and other non-ACGT IUPAC symbols).  For example, this would create ACGTTAAAAAGTC, ACGTTAAAACGTC, ACGTTAAAAGGTC, and so forth (all 1024 possibilities).  If you are interested in seaching for new life by mining shotgun metagenomic reads for 16s sequences that do not quite match your primers...   this (and hdist) might be a good place to start!  But it's also useful for adapters with barcodes.


Length filtering:
bbduk.sh in=reads.fq out=clean.fq qtrim=r trimq=10 minlen=100

This will discard reads shorter than 100bp after trimming to Q10.  Alternatively, using "mlf=50" (minlengthfraction=50) would discard reads under 50% of their original length after trimming.  Either of these flags apply to any trim operation, whether force-trim (ftr, ftl, ftm), quality-trimming (qtrim), or kmer-trimming (ktrim).  "mlf" compares the final length after all trim operations to the initial length before any trim operations.
```
using info from https://www.biostars.org/p/364004/

>
>Use BBMap suite (reproduced from here) :

>If you have paired reads, and enough of the reads have inserts shorter than read length, you can identify adapter sequences with BBMerge, like this (they will be printed to adapters.fa):

>bbmerge.sh in1=r1.fq in2=r2.fq outa=adapters.fa
>You can find the adapter sequence used in the adapters.fa file included with BBMap. In that case, you can do this:

>bbduk.sh in1=r1.fq in2=r2.fq k=23 ref=adapters.fa stats=stats.txt
>stats.txt will then list the names of adapter sequences found, and their frequency.

okay, so lets look at guides/bbmerge

```
Discovering adapter sequences:
bbmerge.sh in=reads.fq outa=adapters.fa
.......
Recommended command for optimal accuracy:
bbmerge-auto.sh in=reads.fq out=merged.fq adapter1=<something> adapter2=<something> rem k=62 extend2=50 ecct
```
ezpz. lets go.

```
bbmerge-auto.sh in=reads.fq outa=adapters.fa
```
now to try on actual data.
```
❯ /Users/michaelfoster/bioinformatics/bbmap/bbmerge.sh in=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq outa=../adapters.fa
/Users/michaelfoster/bioinformatics/bbmap//calcmem.sh: line 75: [: -v: unary operator expected
java -ea -Xmx1000m -Xms1000m -Djava.library.path=/Users/michaelfoster/bioinformatics/bbmap/jni/ -cp /Users/michaelfoster/bioinformatics/bbmap/current/ jgi.BBMerge in=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq outa=../adapters.fa
Executing jgi.BBMerge [in=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq, outa=../adapters.fa]
Version 38.96

Adapters counted: 0
Total time: 5.208 seconds.

Pairs:               	3915699
Joined:              	5       	0.000%
Ambiguous:           	3915694   	100.000%
No Solution:         	0       	0.000%
Too Short:           	0       	0.000%

Avg Insert:          	288.8
Standard Deviation:  	1.0
Mode:                	288

Insert range:        	288 - 290
90th percentile:     	290
75th percentile:     	288
50th percentile:     	288
25th percentile:     	288
10th percentile:     	0
```
okay lets see if that worked.
```
❯ cat ../adapters.fa
>Read1_adapter
N
>Read2_adapter
N
```
it didn't :)
maybe I need to run both reads to fully get the right adapter...?
```
❯ /Users/michaelfoster/bioinformatics/bbmap/bbmerge.sh in1=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq in2=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq outa=../adapters.fa
/Users/michaelfoster/bioinformatics/bbmap//calcmem.sh: line 75: [: -v: unary operator expected
java -ea -Xmx1000m -Xms1000m -Djava.library.path=/Users/michaelfoster/bioinformatics/bbmap/jni/ -cp /Users/michaelfoster/bioinformatics/bbmap/current/ jgi.BBMerge in1=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq in2=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq outa=../adapters.fa
Executing jgi.BBMerge [in1=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq, in2=TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_2.fq, outa=../adapters.fa]
Version 38.96

Adapters counted: 1453244
Total time: 21.103 seconds.

Pairs:               	7831399
Joined:              	2495940   	31.871%
Ambiguous:           	4609096   	58.854%
No Solution:         	726363   	9.275%
Too Short:           	0       	0.000%

Avg Insert:          	139.0
Standard Deviation:  	55.0
Mode:                	167

Insert range:        	35 - 291
90th percentile:     	213
75th percentile:     	170
50th percentile:     	129
25th percentile:     	96
10th percentile:     	74
```
take 2:
```
❯ cat ../adapters.fa
>Read1_adapter
AGATCGGAAGAGCACACGTCTGAACTCCAGTCACTCGTTCATCTCGTATGCCGTCTTCTGCTTG
>Read2_adapter
AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTCGGTGGTCGCCGTATCATT
```
that looked to have worked. now lets check it.
```
❯ cat TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq | grep "@" | wc
 7831399 15662798 419837838
❯ cat TR25_CKDL210019355-1a-AK3590_HGV5WBBXX_L3_1.fq | grep "AGATCGGAAGAGCACACGTCTGAACTCCAGTCACTCGTTCATCTCGTATGCCGTCTTCTGCTTG" | wc
  503868  503868 76084068
```
HMMMM....

