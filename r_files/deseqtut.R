#http://bioconductor.org/packages/release/bioc/vignettes/tximport/inst/doc/tximport.html#Salmon
library(tidyverse)
library(tximportData)
dir <- system.file("extdata", package = "tximportData")
list.files(dir)
#samples <- read.table(file.path(dir, "samples.txt"), header = TRUE)
#samples
#files <- file.path(dir, "salmon", samples$run, "quant.sf.gz")
#names(files) <- paste0("sample", 1:6)
#all(file.exists(files))
#BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene")
#library(TxDb.Hsapiens.UCSC.hg19.knownGene)
#txdb <- TxDb.Hsapiens.UCSC.hg19.knownGene
#k <- keys(txdb, keytype = "TXNAME")
#tx2gene <- select(txdb, k, "GENEID", "TXNAME")
#library(readr)
#tx2gene <- read_csv(file.path(dir, "tx2gene.gencode.v27.csv"))
#head(tx2gene)
Qfiles <- file.path(dir, samples$quant_file)
Qfiles
tx2gene_map <- read_tsv("/Users/michaelfoster/Downloads/GCA_000146045.2_R64_tx2gene.tsv")
samples <- read_csv("/Users/michaelfoster/Downloads/Sample_data.csv")
library(tximport)
txi <- tximport(files = Qfiles, type = "salmon", tx2gene = tx2gene_map)
names(txi)
head(txi$counts)
txi.tx <- tximport(files, type = "salmon", txOut = TRUE)
txi.sum <- summarizeToGene(txi.tx, tx2gene)
all.equal(txi$counts, txi.sum$counts)

files <- file.path(dir, "salmon", samples$run, "quant.sf.gz")
names(files) <- paste0("sample", 1:6)
txi.salmon <- tximport(files, type = "salmon", tx2gene = tx2gene)
head(txi.salmon$counts)
#https://www.biostars.org/p/462332/
files <- file.path(dir, "salmon_gibbs", samples$run, "quant.sf.gz")
names(files) <- paste0("sample", 1:6)
txi.inf.rep <- tximport(files, type = "salmon", txOut = TRUE)
names(txi.inf.rep)
names(txi.inf.rep$infReps)
dim(txi.inf.rep$infReps$sample1)

library(DESeq2)
sampleTable <- data.frame(condition = factor(rep(c("A", "B"), each = 3)))
rownames(sampleTable) <- colnames(txi$counts)
dds <- DESeqDataSetFromTximport(txi, sampleTable, ~condition)
# dds is now ready for DESeq() see DESeq2 vignette
?DESeq()
#DESeq(dds)
res <- results(DESeq(dds))
head(res)
res_sig <- subset(res, padj<.05)
res_lfc <- subset(res_sig, abs(log2FoldChange) > 1)
head(res_lfc)
plotMA(res)
plotCounts(dds, gene="ITS1-1", intgroup="condition")
plotCounts(dds, gene=which.min(res$padj), intgroup="condition")
#Normalize raw counts (dataset before we applied DESeq algorithm) on stabalizing variance 
vsd <- vst(dds)
# calculate sample distances
sample_dists <- assay(vsd) %>%
  t() %>%
  dist() %>%
  as.matrix() 

head(sample_dists)

#Next, let’s calculate the MDS values from the distance matrix.

mdsData <- data.frame(cmdscale(sample_dists))
mds <- cbind(mdsData, as.data.frame(colData(vsd))) # combine with sample data
head(mds)

ggplot(mds, aes(X1, X2, shape = condition)) + 
  geom_point(size = 3) +
  theme_minimal()

#install.packages("pheatmap")
library(pheatmap)
library(dplyr)
#Next, we can select a subset of genes to plot. Although we could plot all ~6000 yeast genes, let’s choose the 20 genes with the largest positive log2fold change.

genes <- order(res_lfc$log2FoldChange, decreasing=TRUE)[1:20]

#We can also make a data.frame that contains information about our samples that will appear in the heatmap. We will use our samples data.frame from before to do this.

#samples$condition <- sampleTable$condition
head(samples)
annot_col <- samples %>%
  column_to_rownames('sample') %>%
  dplyr::select(condition) %>%
  as.data.frame()

head(annot_col)

# And now plot the heatmap!
?pheatmap
head(genes)
head(vsd)
head(assay(vsd))
pheatmap(assay(vsd)[genes, ], cluster_rows=TRUE, show_rownames=TRUE,
         cluster_cols=FALSE, annotation_col=annot_col)

d <- plotCounts(dds, gene=which.min(res$padj), intgroup="condition", 
                returnData=TRUE)
library("ggplot2")
ggplot(d, aes(x=condition, y=count)) + 
  geom_point(position=position_jitter(w=0.1,h=0)) + 
  scale_y_log10(breaks=c(25,100,400))

