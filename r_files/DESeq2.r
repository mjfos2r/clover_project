library('tidyverse')
#BiocManager::install('tximport')
library('tximport')
library("DESeq2")
#BiocManager::install('apeglm')
library(apeglm)
library(ggplot2)
library(ggrepel)
#BiocManager::install('EnhancedVolcano')
library(EnhancedVolcano)

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
tx2gene <- read.table(file='trepens_tx2gene.csv', header = TRUE, sep = ',')
tx2gene.df<-as_tibble(tx2gene)
head(tx2gene)
### using DESeq2
#read in samples.csv
samples <- read.table(file='samples.csv', header = TRUE, sep = ',')
#lable rownames as each TRXX sample name
rownames(samples) = samples$sample
#set factors for each factor
samples$condition = as.factor(samples$condition)
samples$population = as.factor(samples$population)
samples$location = as.factor(samples$location)
samples$latitude = as.factor(samples$latitude)
###########################################
#sampleInfo<- read.table(file='Summary_Info_Paul.csv', header = TRUE, sep = ',')
#sampleInfo <- as.data.frame(sampleInfo)
#head(sampleInfo$PotN)
#sampleInfo$PotN <- paste0("TR", sampleInfo$PotN)
#print(sampleInfo)
###########################################
#set filepath to the location of the quants
dir <- file.path('work/quants_wunmap')
files <- file.path(dir, samples$quant, "quant.sf")
print(files)
#set names to the sample IDs "TRXX"
names(files) <- paste0(samples$sample)
#import transcript quant files
txi <- tximport(files, type = "salmon", txIn = TRUE, txOut = FALSE, tx2gene = tx2gene)
head(txi)
?DESeqDataSetFromTximport()
#treatment <- c("drought, control")
class(txi)
names(txi)
dds <- DESeqDataSetFromTximport(txi, colData = samples, population + location + latitude ~ condition) 
dds <- DESeq(dds, parallel = TRUE)
cbind(resultsNames(dds))
res.dds<-results(dds)
summary(res.dds)

res <- results(dds, name = "condition_Drought_vs_Control", alpha = 0.05)
summary(res)
mcols(res)$description
head(res)

resLFC = lfcShrink(dds, coef = "condition_Drought_vs_Control", type="apeglm")
png("dgema-plot.salmon.png", width=7, height=5, units = "in", res = 300)
plotMA(resLFC, alpha = 0.05, ylim=c(-6,6),
       main = "MA-Plot for the shrunken log2 fold changes")

rld = rlog(dds)
vsd = vst(dds)
vsd
pcaData = plotPCA(vsd, intgroup=c("Sample", "condition"),returnData=TRUE)
head(pcaData)
percentVar = round(100 * attr(pcaData, "percentVar"))
png("TRR_PCA-rlog.salmon.png", width=7, height = 7, units = "in", res = 300)
ggp <- ggplot(pcaData, aes(PC1, PC2, colour = condition)) +
  geom_point(size=2) + theme_bw() + scale_color_manual(values=c("blue", "red")) +
  geom_text_repel(aes(label = name), nudge_x = -1, nudge_y = 0.2, size = 3) +
  ggtitle("principal component analysis (PCA)", subtitle = "rlog transformation") +
  xlab(paste0("PC1: ", percentVar[1], "% variance")) +
  ylab(paste0("PC2: ", percentVar[2], "% variance"))
print(ggp)
