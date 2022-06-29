# 6/13/22 notes from morning discussion

## TODO//

Match (% dups and # reads) to RNA concentrations as well as the quantity of RNA

So check to see if # of duplications is a result of PCR/PCR artifact.
Also check to see if low RNA results in low reads or if there is a relationship between number of reads and amount of RNA.
basically check to see if duplication is a result of low recover vs high recovery.
check for multiple factors.

## Review of RNA Seq Sample prep excel sheet

RNASeq sample preparation data.xls
mass in mg = amt plant material
nanodrop ng/uL
qubit ng/uL

maybe 260/280 ratio indicating quality of starting library has implications for # reads/duplicates

***
next tab is qPCR for transcript amplification.
some run for 9-15-21-etc
some were re-amplified.

then ran through bioanalyzer for length data
>>check for summary of bioanalyzer data.

recap:
library amplification was determined by random selection using primers to determine how many cycles
it takes to get to half max cycles.
this then determines how many cycles to amplify to assemble the library.

some lower concentration libraries were run, some were reamplified via specific kit.

on the sheet: qubit cDNA concentration, then sample ID, then bioanalyzer length.

map of samples going into PCR: Plate map.
^ shows how many cycles each was run.
then mapped to indexes.
also a plate map of qubit and bioanalyzer.

there is an overlay of the same platemap with reamplification overlaid.

only 4 samples were reamplified.
>TR72,
>TR68,
>TR80,
>TR18,
first three, 72, 68, 80 reamp for 4 cycles
TR18 was reamp for 7 cycles.

TR18 is largest duplicate sample 98% duplicates and 23.8m reads.
next highest dupe is
TR86, amp for 21 cycles 93.8% duplicates.
TR73, amp for 21 cycles, 92.8% dupes
TR25, amp for 18 cycles, 92.7% dupes.
