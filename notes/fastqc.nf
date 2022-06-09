//declare syntax version
nextflow.enable.dsl=2

//todo
// actually write this correctly and with the correct syntax.
// actually make it feed data and flow correctly.
// this is more or less just a rough outline of how it should be but much work is still needed.
params.reads = "/$PWD/in/"
params.output = "$PWD/out/"

process versionCheck {
	//todo: version checking / pre-pipeline run checks
	"""
	fastQC --version
	trimmomatic --version
	minimap2 --version
	????
	"""
}

process fastQC {
  input:
      //my lil bash script probably works better than this but hey lets try to get this working anyway
	  //todo: get input working correctly
	  path rawLeft from params.reads
	  path rawRight from params.reads
  output:
      //todo: do output correctly.
	  path output

		"""
		fastqc $rawLeft --outputdir $output/qcreports/
		fastqc $rawRight --outputdir $output/qcreports/
		"""
}
process trimmomatic {

  input:
      //todo, input these correctly.
      path rawreads from params.reads
  output:
      // todo, output these correctly
      path trimmedreads

	  """
	  trimmomatic $rawreads 
	  """
}

process minimap2 {

  input:
      path referencetranscriptome as RefTrans
	  path trimmedreads
  output:
      //todo, make this output correctly.
	  sam file, bam file, fasta > params.minimapoutput

      """
	  minimap2 -a -t $threads -x map-hifi $RefTrans $trimmedreadsLeft
	  minimap2 -a -t $threads -x map-hifi $RefTrans $trimmedreadsRight 
	  """
}

process trinity {
//for denovo

  input:
      trimmedreadsLeft
	  trimmedreadsRight
	  cores
	  me
  output:
      path assembledtranscriptome

      """
	  Trinity --seqType fq --left $trimmedreadsLeft --right $trimmedreadsRight --CPU $cores --max_memory $mem 
	  """
}

process salmon {
//for transcript quant estimates 
// https://salmon.readthedocs.io/en/latest/salmon.html#using-salmon

  input:
      alignment from minimap2 or trinity? // .bam/.sam?
	  trimmed reads // .fq
  output:
      transcripts_quant

	 
	  // from the tutorial
      //salmon index -t transcripts.fa -i transcripts_index --decoys decoys.txt -k 31 
	  // still from tutorial
	  // map then quant,
	  // below is paired end reads
	  //salmon quant -i transcripts_index -l <LIBTYPE> -1 reads1.fq -2 reads2.fq --validateMappings -o transcripts_quant
	  // below is single end reads
	  //salmon quant -i transcripts_index -l <LIBTYPE> -r reads.fq --validateMappings -o transcripts_quant
	  //
	  //
	  // this one is probably the one to use. quant transcripts against the alignment and output the quant file.
	  //salmon quant -t transcripts.fa -l <LIBTYPE> -a aln.bam -o salmon_quant
}

