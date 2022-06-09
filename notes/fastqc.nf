//declare syntax version
nextflow.enable.dsl=2
//script params
params.reads = "/$PWD/in/"
params.output = "$PWD/out/"
process fastQC {
  input:
	  path rawreads from params.reads
  output:
	  path output

		"""
		fastqc $rawreads --outputdir $output/qcreports/
		"""
}
process trimmomatic {

  input:
      path rawreads from params.reads
  output:
      path trimmedreads

	  """
	  trimmomatic $rawreads 
	  """
}