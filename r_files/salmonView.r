# https://hackmd.io/@NFpEogXySTuWExLvDQQHig/SkwWM4WHv
####################################################################################################################################################################
#install.packages('tidyverse')
#install.packages('BiocManager')
#BiocManager::install('DESeq2')
#BiocManager::install('tximport')
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
library('rtracklayer')
#too many tabs for rtracklayer :(
#gtf <- rtracklayer::import("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf")
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
#install.packages('devtools')
#devtools::install_github("jmw86069/splicejam")
library('splicejam')
?makeTx2geneFromGtf()
#using the following function
?makeTx2geneFromGtf
tx2geneTR <- makeTx2geneFromGtf(GTF = 'refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf', geneAttrNames = c("gene_id", "gene_name", "gene_type"), txAttrNames = c("transcript_id", "transcript_type"), geneFeatureType = "gene", txFeatureType = c("transcript", "mRNA", "CDS"), nrows = -1L, verbose = TRUE)
#didn't work, gff file is kinda scuffed and lacks the required info. specifically, in column 3, "gene", as well as various other issues.

#lets view the quant.sf file
TR25_quant <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/work/oldquant/trimmed_TR25/transcripts_quant_TR25/quant.sf", header = TRUE, sep = '\t')
TR25_quant_DF <- as_tibble(TR25_quant)
print(TR25_quant_DF)
?sort.DataFrame
nozeds <- subset(TR25_quant_DF,  TR25_quant_DF$NumReads > 0 & TR25_quant_DF$NumReads != 0)
print(nozeds)

#now to take and create a tx2gene file 
#need to get Name for transcript name and then Gene name from the included assession number in column 9 of the GTF.
#need to parse that out...
#will do.

#something like
# feed in dataframe with NumReads != 0, 
# take Name and search GTF file, pull the gene function and place that as GENE
# then take and pull NumReads and place into Row3 of new counts file.
#lets actually review the basis of the gtf/gff file format http://www.sequenceontology.org/browser/obob.cgi 

#tx2geneTR <- makeTx2geneFromGtf(GTF = 'refseq/transcript-ref/attempt3/dummy_gtf.gtf', geneAttrNames = c("gene_id", "gene_name", "gene_type"), txAttrNames = c("transcript_id", "transcript_type"), geneFeatureType = "gene", txFeatureType = c("transcript", "mRNA", "CDS"), nrows = -1L, verbose = TRUE)
dummy <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/dummy_gtf.gtf", header = FALSE, sep = '\t')
dummy <- as_tibble(dummy)
print(dummy)

tx2gene <- read.table(file='refseq/transcript-ref/attempt3/tx2gene_dummy.tsv', header = TRUE, sep = '\t')
print(tx2gene)
tx2gene<-as_tibble(tx2gene)

### using DESeq2 
library("tximport")
library("readr")
#BiocManager::install("tximportData")
library("tximportData")
library("tximport")
library("readr")
library("tximportData")
#dir <- system.file("extdata", package="tximportData")
samples <- read_csv(file.path('refseq/transcript-ref/attempt3/samples.csv'))
#samples$condition <- factor(rep(c("A","B"),each=3))
#rownames(samples) <- samples$run
#samples[,c("pop","center","run","condition")]
files <- file.path(dir = 'cwd',"salmon", samples$run, "work/trimmed_TR25/transcripts_quant_TR25/quant.sf")
names(files) <- samples$run
tx2gene <- read_tsv(file.path("refseq/transcript-ref/attempt3/tx2gene_dummy.tsv"))
print(tx2gene)
?tximport
txi <- tximport('work/trimmed_TR25/transcripts_quant_TR25/quant.sf', type="salmon", tx2gene=tx2gene)
library("DESeq2")
?DESeqDataSetFromTximport
ddsTxi <- DESeqDataSetFromTximport(txi,
                                   colData = samples,
                                   design = ~ 1)
DESeq(ddsTxi)
