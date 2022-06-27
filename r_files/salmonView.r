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
library('dplyr')
####################################################################################################################################################################
dir <- "/Users/michaelfoster/sequencing/summer/clover_project/"
# transcript - gene ID Data Frame
# read in the genemap file.
# need to get genemap file
#install.packages('rtracklayer')
#BiocManager::install('rtracklayer')
gtf <- rtracklayer::import("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf")
gtf2 <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf", header = TRUE, sep = '\t')
head(gtf2)
tail(gtf2)
gtf2df <- as_tibble(gtf2)
head(gtf2df)
length(gtf2df)
print(gtf2df)
?tidyverse

####### old, ignore.\/ [[
#
#okay lets use this code from biostars.
#apparently written by akrun on Stack Overflow.
#thanks to those dudes if this works.
#UPDATE: it doesnt, big surprise.
#perhaps there is a way to get gffread to parse the file for me so i can input it ezpz into R.

####################################################################################################################################################################
#read_gtf <- function(file){
#  require(tidyverse)
#  cnames <- c("seqname", "source", "feature", "start", "end", "score", "strand", "frame", "attribute") 
#  #read in raw GTF as tsv and remove comment rows
#  messy <- read_tsv(file, col_names = F, comment = "#") %>%
#    `colnames<-`(cnames)
#  #get the unique attribute types
#  #this assumes there are no spaces in the attribute names
#  att_names <- messy %>%
#    select(attribute) %>%
#    apply(., MARGIN = 1, FUN = str_split, pattern = '"; ') %>%
#    unlist() %>%
#    trimws() %>%
#    trimws(whitespace = ";") %>%
#    sub(" .*$", "", .) %>% 
#    unique()
#  att_names <- att_names[att_names != ""]
#  #for each attribute type, create column
#  #apply over gtf to fill in rows where attribute type is found
#  for (att in att_names) {
#    colatt <- apply(messy, MARGIN = 1, function(x){ var <- str_extract(string = x[9], pattern = sprintf('";\s+%1$s[^;]+|^%1$s[^;]+;[^"]+"', att)) %>%
#        trimws(whitespace = '["; ]+', which = 'left') %>%
#        str_extract('(?<=")[^"]+(?=")')
#      })
#    messy <- messy %>% add_column("{att}" := colatt)
#  }
#  #remove original attribute column
#  messy %>% select(-c(attribute))
#}
####################################################################################################################################################################
# lets try it on the gtf for trifolium repens
setwd("/Users/michaelfoster/sequencing/summer/clover_project/")
#tr_gtf <- read_gtf("refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf")
#doesn't work whatever.
######### old ignore above^ ]]
#now using splicejam
install.packages('devtools')
devtools::install_github("jmw86069/splicejam")
library('splicejam')
#using the following function
?makeTx2geneFromGtf
tx2geneTR <- makeTx2geneFromGtf(GTF = 'refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf', geneAttrNames = c("function","accession"),txAttrNames = c("ID"), geneFeatureType = c("gene"), txFeatureType = "transcript", nrows = -1L, verbose = TRUE)
#didn't work, gff file is kinda scuffed and lacks the required info. specifically, in column 3, "gene", as well as various other issues.

#lets view the quant.sf file
TR25_quant <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/work/trimmed_TR25/transcripts_quant_TR25/quant.sf", header = TRUE, sep = '\t')
TR25_quant_DF <- as_tibble(TR25_quant)
print(TR25_quant_DF)
?sort.DataFrame
nozeds <- subset(TR25_quant_DF,  TR25_quant_DF$NumReads > 0 & TR25_quant_DF$NumReads != 0)
print(nozeds)
#df <- TR25_quant_DF
#new_df <- subset(df, df$NumReads > 0)
#print(new_df)
#okay this finally worked.

#now to take and create a tx2gene file 
#need to get Name for transcript name and then Gene name from the included assession number in column 9 of the GTF.
#need to parse that out...
#will do.
