library(tidyverse)
library(tibble)
library(stringr)
library(stats)
library(oligo)
library(dplyr)
library(edgeR)
library(DEseq2)
library(MSA)
library(Rsamtools)
library(locfit)
library(bumphunter)
library(ggplot)
library(Biostrings)
library(systemPipeR)
library(GenomicRanges)

# rough idea
# import reads
# assemble reads into transcriptome
# index reference genome
# map to reference genome
# plot reads against reference genome
# determine expression.
