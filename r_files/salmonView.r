# https://hackmd.io/@NFpEogXySTuWExLvDQQHig/SkwWM4WHv
####################################################################################################################################################################
install.packages('tidyverse')
install.packages('BiocManager')
BiocManager::install('DESeq2')
BiocManager::install('tximport')
library('tidyverse')
library('tximport')
library('DESeq2')
library('RSQLite')
####################################################################################################################################################################
dir <- "/Users/michaelfoster/sequencing/summer/clover_project/work/"
# transcript - gene ID Data Frame
# read in the genemap file.
# need to get genemap file
#install.packages('rtracklayer')
BiocManager::install('rtracklayer')
#gtf <- rtracklayer::import("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf")
gtf2 <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf", header = FALSE, sep = '\t')
head(gtf2)
#
#
#okay lets use this code from biostars.
#apparently written by akrun on Stack Overflow.
#thanks to those dudes if this works.
####################################################################################################################################################################
read_gtf <- function(file){
  require(tidyverse)
  cnames <- c("seqname", "source", "feature", "start", "end", "score", "strand", "frame", "attribute") 
  #read in raw GTF as tsv and remove comment rows
  messy <- read_tsv(file, col_names = F, comment = "#") %>%
    `colnames<-`(cnames)
  #get the unique attribute types
  #this assumes there are no spaces in the attribute names
  att_names <- messy %>%
    select(attribute) %>%
    apply(., MARGIN = 1, FUN = str_split, pattern = '"; ') %>%
    unlist() %>%
    trimws() %>%
    trimws(whitespace = ";") %>%
    sub(" .*$", "", .) %>% 
    unique()
  att_names <- att_names[att_names != ""]
  #for each attribute type, create column
  #apply over gtf to fill in rows where attribute type is found
  for (att in att_names) {
    colatt <- apply(messy, MARGIN = 1, function(x){
      var <- str_extract(string = x[9], pattern = sprintf('";\s+%1$s[^;]+|^%1$s[^;]+;[^"]+"', att)) %>%
        trimws(whitespace = '["; ]+', which = 'left') %>%
        str_extract('(?<=")[^"]+(?=")')
      })
    messy <- messy %>% add_column("{att}" := colatt)
  }
  #remove original attribute column
  messy %>% select(-c(attribute))
}
####################################################################################################################################################################
# lets try it on the gtf for trifolium repens
setwd("/Users/michaelfoster/sequencing/summer/clover_project/")
tr_gtf <- read_gtf("refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf")
#doesn't work whatever.
