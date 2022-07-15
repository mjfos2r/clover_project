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
samples_salmon <- read.table('/Users/michaelfoster/sequencing/summer/clover_project/spreadsheets/samples.csv',
                             sep = ',', header = T)
head(samples_salmon)

samples_trinity <- tibble(condition = samples_salmon$condition, replicate = samples_salmon$condition, fastq = samples_salmon$quant)

samples_trinity.txt<- samples_trinity %>%
  arrange(condition)

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
            quote=FALSE, sep='\t', row.names = FALSE)
