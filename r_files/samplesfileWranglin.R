#note to self NEVER update R.
#install.packages('ggplot2')
#install.packages('tibble')
#install.packages('tidyr')
#install.packages('readr')
#install.packages('purrr')
#install.packages('dplyr')
#install.packages('stringi')
#install.packages('stringr')
#install.packages('forcats')
#install.packages('tidyverse')
library(tidyverse)
library(stringi)
library(dplyr)
#okay that finally works after fixing all of the scuffed deps.
#never update r-studio/rlang with homebrew on arm64 OSX!!!!
setwd('/Users/michaelfoster/sequencing/summer/clover_project/')
samples_salmon <- read.table('/Users/michaelfoster/sequencing/summer/clover_project/spreadsheets/samples.csv',
                             sep = ',', header = T)
head(samples_salmon)

samples_trinity <- tibble(condition = samples_salmon$condition, replicate = samples_salmon$condition, fastq = samples_salmon$quant)

head(samples_trinity)
#https://stackoverflow.com/questions/62941338/can-i-conditionally-add-numbers-to-certain-repeated-values-in-a-column-in-r
#very helpful ^
samples_trinity <- samples_trinity %>%
  filter(!duplicated(paste(condition, replicate, fastq))) %>%
  group_by(condition) %>%
  mutate(replicate=paste0(replicate,1:n())) %>%
  arrange(condition)
samples_trinity$replicate
samples_trinity$condition  
samples_trinity$fastq

#okay now to strip quant from the names.

samples_trinity$fastq <- stri_sub(samples_trinity$fastq, 1, -7)
samples_trinity$fastq
#fixed!

#now to write to samples.txt as a .tsv file for trinity!
write.table(samples_trinity, 
            file='/Users/michaelfoster/sequencing/summer/clover_project/spreadsheets/samples_trinity.txt',
            quote=FALSE, sep='\t', col.names = FALSE, row.names = FALSE)

samples_trinity.txt <- read.table('spreadsheets/samples_trinity.txt', sep = '\t')
samples_trinity.txt
samples_trinity.txt$V1
samples_trinity.txt$V2
samples_trinity.txt$V3
#cool, looks great
#Done!

#okay lets redo without dupes excluded

samples_hidupes <- read.table('spreadsheets/samples_hidup.txt', sep = ',', header = T)
samples_trinity_highdup <- tibble(condition = samples_hidupes$condition, replicate = samples_hidupes$condition, fastq = samples_hidupes$quant)
samples_trinity_highdup

samples_trinity_highdup <- samples_trinity_highdup %>%
  filter(!duplicated(paste(condition, replicate, fastq))) %>%
  group_by(condition) %>%
  mutate(replicate=paste0(replicate,1:n())) %>%
  arrange(condition)

samples_trinity_highdup$fastq <- stri_sub(samples_trinity_highdup$fastq, 1, -7)

samples_trinity_highdup$condition  
samples_trinity_highdup$replicate
samples_trinity_highdup$fastq

write.table(samples_trinity_highdup, file = 'spreadsheets/samples_trinity_highdups.txt',
            quote=FALSE, sep='\t', col.names = FALSE, row.names = FALSE)
#okay cool.
#lets see if this changes the denovo assembly any.
#dunno if it will. 
#made it anyway, not interrupting the job since its currently running!