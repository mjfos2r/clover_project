1. take raw data
2. ???
3. profit
***
0. figure out which samples are which re: Undetermined given that the index was done in error for TR25 and TR86
1. Use FASTQC - adapter content - [!] done!
2. Use Trimmomatic - include custom adapters for Lexogen kit
3a. RNASeq using reference - download genome feature format (GFF) with introns, exons, splice
3b. RNASeq from de novo - use Trinity for de novo assembly back to genome
4. Whether using 3a or 3b, use Salmon in R to analyze contig files for each transcript
5. Use DESeq2 to quantify differentially expressed genes

And before we do any of this, step 0 is to determine which Undetermined is TR25 and which is TR86.


so. 

fastQC -> Trimmomatic(lexogen+illumina adapters)-<>>Minimap2 against refseq? >>Trinity DeNovo? --> SalmonR -> DESeq2 -> Plottin'
