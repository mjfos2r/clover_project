install.packages('seqinr')
library(seqinr)
gsu <- read.fasta("sequencing/sars/gsu.fa")
evtl <- read.fasta("sequencing/sars/EVTL.fa")

??seqinr

#for (i in 1:length(names(gsu))) {
#  print(names(gsu)[i])
#  print(names(evtl)[i])
#  print(length(intersect(which(gsu[[i]] == "N"), which (evtl[[i]] != "N"))))
#  print(length(intersect(which(gsu[[i]] == "A"), which (evtl[[i]] != "A"))))
#  print(length(intersect(which(gsu[[i]] == "C"), which (evtl[[i]] != "C"))))
#  print(length(intersect(which(gsu[[i]] == "G"), which (evtl[[i]] != "G"))))
#  print(length(intersect(which(gsu[[i]] == "T"), which (evtl[[i]] != "T"))))
#}
library(tidyverse)
?read.table()
nextclade <- as_tibble(read.table("Downloads/nextclade_gsu2evtl.csv", header = T, sep = ";"))
head(nextclade)



