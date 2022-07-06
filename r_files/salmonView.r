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
#library('rtracklayer')
#too many tabs for rtracklayer :(
#gtf <- rtracklayer::import("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf")
gtf2 <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf", header = F, sep = '\t')
head(gtf2)
tail(gtf2)
#make sure header = F in read.table otherwise it won't tibble...
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
#tr_gtf <- read_gtf("refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf")
#DIDN'T WORK OH WELL.

#redundant, already set above.
setwd("/Users/michaelfoster/sequencing/summer/clover_project/")
######### old ignore above^ ]]

#now using splicejam
## Not anymore.
#install.packages('devtools')
#devtools::install_github("jmw86069/splicejam")
#library('splicejam')
#?makeTx2geneFromGtf()
#using the following function
#?makeTx2geneFromGtf
#tx2geneTR <- makeTx2geneFromGtf(GTF = 'refseq/transcript-ref/attempt3/TrR.v5.transcript.fresh.gtf', geneAttrNames = c("gene_id", "gene_name", "gene_type"), txAttrNames = c("transcript_id", "transcript_type"), geneFeatureType = "gene", txFeatureType = c("transcript", "mRNA", "CDS"), nrows = -1L, verbose = TRUE)
#didn't work, gff file is kinda scuffed and lacks the required info. specifically, in column 3, "gene", as well as various other issues.

#todo// 
# make for loop to run through and pull in quant.sf files for all samples.

#lets view the quant.sf file
#TR25_quant <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/work/oldquant/trimmed_TR25/transcripts_quant_TR25/quant.sf", header = TRUE, sep = '\t')
#TR25_quant_DF <- as_tibble(TR25_quant)
#print(TR25_quant_DF)
#?sort.DataFrame
nozeds <- subset(TR25_quant_DF,  TR25_quant_DF$NumReads > 0 & TR25_quant_DF$NumReads != 0)
print(nozeds)

#now to take and create a tx2gene file 
# done as of 7/1/22, thanks nic!


#something like
# feed in dataframe with NumReads != 0, 
# take Name and search GTF file, pull the gene function and place that as GENE
# then take and pull NumReads and place into Row3 of new counts file.
#lets actually review the basis of the gtf/gff file format http://www.sequenceontology.org/browser/obob.cgi 

#tx2geneTR <- makeTx2geneFromGtf(GTF = 'refseq/transcript-ref/attempt3/dummy_gtf.gtf', geneAttrNames = c("gene_id", "gene_name", "gene_type"), txAttrNames = c("transcript_id", "transcript_type"), geneFeatureType = "gene", txFeatureType = c("transcript", "mRNA", "CDS"), nrows = -1L, verbose = TRUE)
#dummy <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/refseq/transcript-ref/attempt3/dummy_gtf.gtf", header = FALSE, sep = '\t')
#dummy <- as_tibble(dummy)
#print(dummy)

library("DESeq2")
?DESeqDataSetFromTximport
?tximport()
#tximport(
#  files,
#  type = c("none", "salmon", "sailfish", "alevin", "kallisto", "rsem", "stringtie"),
#  txIn = TRUE,
#  txOut = FALSE,
#  countsFromAbundance = c("no", "scaledTPM", "lengthScaledTPM", "dtuScaledTPM"),
# ... much more
#)
#so lets try it out.
#set files to the quants.sf locations.
?file.path
tx2gene <- read.table(file='trepens_tx2gene.csv', header = TRUE, sep = ',')
print(tx2gene)
tx2gene.df<-as_tibble(tx2gene)
head(tx2gene)
### using DESeq2 
samples <- read.table(file='samples.txt', header = TRUE, sep = ';')
#samples.df <-as_tibble(samples)
rownames(samples) = samples$Sample
samples$condition = as.factor(samples$condition)
head(samples)
#?as.factor

dir <- file.path('work/quants_wunmap')
files <- file.path(dir, samples$quant, "quant.sf")
files
names(files) <- paste0(samples$Sample)
?tximport

txi <- tximport(files, type = "salmon", txIn = TRUE, txOut = FALSE, tx2gene = tx2gene)
head(txi)

?DESeqDataSetFromTximport()
#treatment <- c("drought, control")
class(txi)
names(txi)
dds <- DESeqDataSetFromTximport(txi, colData = samples, ~ condition) 
dds <- DESeq(dds, parallel = TRUE)
cbind(resultsNames(dds))
res.dds<-results(dds)
summary(res.dds)

res <- results(dds, name = "condition_Drought_vs_Control", alpha = 0.05)
summary(res)
mcols(res)$description
head(res)
#BiocManager::install('apeglm')
library(apeglm)
library(ggplot2)
library(ggrepel)
#BiocManager::install('EnhancedVolcano')
library(EnhancedVolcano)

resLFC = lfcShrink(dds, coef = "condition_Drought._vs_Control", type="apeglm")
png("dgema-plot.salmon.png", width=7, height=5, units = "in", res = 300)
plotMA(resLFC, alpha = 0.05, ylim=c(-6,6),
       main = "MA-Plot for the shrunken log2 fold changes")
dev.off()

rld = rlog(dds)
vsd = vst(dds)
vsd
pcaData = plotPCA(vsd, intgroup=c("Sample", "condition"),returnData=TRUE)
head(pcaData)
percentVar = round(100 * attr(pcaData, "percentVar"))
png("TRR_PCA-rlog.salmon.png", width=7, height = 7, units = "in", res = 300)
plot <- ggplot(pcaData, aes(PC1, PC2, colour = condition)) +
  geom_point(size=2) + theme_bw() + scale_color_manual(values=c("blue", "red", "pink", "purple")) +
  geom_text_repel(aes(label = Sample), nudge_x = -1, nudge_y = 0.2, size = 3) +
  ggtitle("principal component analysis (PCA)", subtitle = "rlog transformation") +
  xlab(paste0("PC1: ", percentVar[1], "% variance")) +
  ylab(paste0("PC2: ", percentVar[2], "% variance"))
print(plot)
