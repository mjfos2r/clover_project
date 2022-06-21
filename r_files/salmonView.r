install.packages('tidyverse')
install.packages('BiocManager')
BiocManager::install('DESeq2')
BiocManager::install('tximport')

library('tidyverse')
library('tximport')
library('DESeq2')
library('RSQLite')

dir <- "/Users/michaelfoster/sequencing/summer/clover_project/work/"

# transcript - gene ID Data Frame
# read in the genemap file.
# need to get genemap file
