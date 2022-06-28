#nozeds
library(tidyverse)
TR90_quant <- read.table("/Users/michaelfoster/sequencing/summer/clover_project/work/TR90/quant_TR90/quant.sf", header = TRUE, sep = '\t')
TR90_quant_DF <- as_tibble(TR90_quant)
print(TR90_quant_DF)
nozeds <- subset(TR90_quant_DF,  TR90_quant_DF$NumReads > 0 & TR90_quant_DF$NumReads != 0)
print(nozeds)
#lets look at 09 now.
TR09_quant <- read.table('/Users/michaelfoster/sequencing/summer/clover_project/work/TR09/quant_TR09/quant.sf', header = TRUE, sep = '\t')
tr09quantdf <- as_tibble(TR09_quant)
print(tr09quantdf)
nozeds09 <- subset(tr09quantdf,  tr09quantdf$NumReads > 0 & tr09quantdf$NumReads != 0)
print(nozeds09)
