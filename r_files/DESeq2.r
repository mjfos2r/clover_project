library('tidyverse')
#BiocManager::install('tximport')
library('tximport')
library("DESeq2")
#BiocManager::install('apeglm')
#library(apeglm)
library(ggplot2)
#install.packages('ggrepel')
library(ggrepel)
#BiocManager::install('EnhancedVolcano')
library(EnhancedVolcano)
setwd('sequencing/summer/clover_project/')
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
head(samples)
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
dds <- DESeqDataSetFromTximport(txi, colData = samples, design = ~ condition + location + latitude) 
dds <- DESeq(dds, parallel = TRUE)
cbind(resultsNames(dds))

#res.dds<-results(dds)
#summary(res.dds)
?DESeq
resEx <- results(dds, name = "condition_Drought_vs_Control")
resEx1 <- results(dds, name = "location_NorthAmerica_vs_Europe")
resEx2 <- results(dds, name = "latitude_Low_vs_High")
summary(res)
summary(res1)
summary(res2)
mcols(res)$description
head(res)

#resLFC = lfcShrink(dds, coef = "condition_Drought_vs_Control", type="apeglm")
#png("dgema-plot.salmon.png", width=7, height=5, units = "in", res = 300)
#plotMA(resLFC, alpha = 0.05, ylim=c(-6,6),
#       main = "MA-Plot for the shrunken log2 fold changes")

rld = rlog(dds)
vsd = vst(dds)
vsd
pcaData = plotPCA(rld, intgroup=c("sample", "condition", "location", "latitude"),returnData=TRUE)
head(pcaData)
percentVar = round(100 * attr(pcaData, "percentVar"))

png("TRR_PCA_LvCvS1.rlog.salmon.png", width=7, height = 7, units = "in", res = 300)
ggplot(pcaData, aes(PC1, PC2, color = condition)) +
  geom_point(size=2, aes(shape = factor(location))) + theme_bw() +
  geom_text_repel(aes(label = sample), nudge_x = -1, nudge_y = 0.2, size = 3) +
  ggtitle("principal component analysis (PCA)", subtitle = "rlog transformation") +
  xlab(paste0("PC1: ", percentVar[1], "% variance")) +
  ylab(paste0("PC2: ", percentVar[2], "% variance"))
dev.off()
png("TRR_volcano_DvC.salmon.png", width=20, height = 10, units = "in", res = 300)
EnhancedVolcano(res, lab = rownames(res), x = 'log2FoldChange', y = 'pvalue',
                pCutoff = 10e-4,
                FCcutoff = 1.333,
                xlim = c(-5.5, 5.5),
                ylim = c(0, -log10(10e-12)),
                pointSize = 2.0,
                labSize = 2.5,
                title = 'DESeq2 results, Drought vs Control',
                subtitle = 'Differential expression',
                caption = 'FC cutoff, 1.333; p-value cutoff, 10e-4',
                legendPosition = "right",
                legendLabSize = 14,
                col = c('grey30', 'forestgreen', 'royalblue', 'red2'),
                colAlpha = 0.9,
                drawConnectors = TRUE,
                hline = c(10e-8),
                widthConnectors = 0.5)
dev.off()
png("TRR_volcano_NAvsEU.salmon.png", width=20, height = 10, units = "in", res = 300)
EnhancedVolcano(res1, lab = rownames(res1), x = 'log2FoldChange', y = 'pvalue',
                pCutoff = 10e-4,
                FCcutoff = 1.333,
                xlim = c(-5.5, 5.5),
                ylim = c(0, -log10(10e-12)),
                pointSize = 2.0,
                labSize = 2.5,
                title = 'DESeq2 results, NA vs EU',
                subtitle = 'Differential expression',
                caption = 'FC cutoff, 1.333; p-value cutoff, 10e-4',
                legendPosition = "right",
                legendLabSize = 14,
                col = c('grey30', 'forestgreen', 'royalblue', 'red2'),
                colAlpha = 0.9,
                drawConnectors = TRUE,
                hline = c(10e-8),
                widthConnectors = 0.5)
dev.off()
png("TRR_volvano_LatHvL.salmon.png", width=20, height = 10, units = "in", res = 300)
EnhancedVolcano(res2, lab = rownames(res2), x = 'log2FoldChange', y = 'pvalue',
                pCutoff = 10e-4,
                FCcutoff = 1.333,
                xlim = c(-5.5, 5.5),
                ylim = c(0, -log10(10e-12)),
                pointSize = 2.0,
                labSize = 2.0,
                title = 'DESeq2 results, High Latitude vs Low Latitude',
                subtitle = 'Differential expression',
                caption = 'FC cutoff, 1.333; p-value cutoff, 10e-4',
                legendPosition = "right",
                legendLabSize = 14,
                col = c('grey30', 'forestgreen', 'royalblue', 'red2'),
                colAlpha = 0.9,
                drawConnectors = TRUE,
                hline = c(10e-8),
                widthConnectors = 0.5)
dev.off()
#BiocManager::install('GO')
#BiocManager::install('pathview')
#BiocManager::install('gage')
