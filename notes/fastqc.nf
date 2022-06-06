//declare syntax version
nextflow.enable.dsl=2
//script params
params.reads = "/$PWD/in/"

process fastQC {
  input:
	  path rawreads
	output:
	  path "report/"

		"""
		fastqc $rawreads
		"""

}
