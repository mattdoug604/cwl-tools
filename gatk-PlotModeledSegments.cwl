#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- PlotModeledSegments
class: CommandLineTool
cwlVersion: v1.0
id: gatk_PlotModeledSegments
inputs:
- doc: Output directory.  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: string
- doc: Prefix for output filenames.  Required.
  id: output_prefix
  inputBinding:
    position: 0
    prefix: --output-prefix
  type: string
- doc: Input file containing modeled segments (output of ModelSegments).  Required.
  id: segments
  inputBinding:
    position: 0
    prefix: --segments
  type: File
- doc: containing a sequence dictionary, which specifies the contigs to be plotted
    and their relative lengths. The sequence dictionary must be a subset of those
    contained in other input files. Contigs will be plotted in the order given. Contig
    names should not include the string "CONTIG_DELIMITER". The tool only considers
    contigs in the given dictionary for plotting, and data for contigs absent in the
    dictionary generate only a warning. In other words, you may modify a reference
    dictionary for use with this tool to include only contigs for which plotting is
    desired, and sort the contigs to the order in which the plots should display the
    contigs.  Required.
  id: sequence_dictionary
  inputBinding:
    position: 0
    prefix: --sequence-dictionary
  type: File
- doc: 'Input file containing allelic counts at heterozygous sites (.hets.tsv output
    of ModelSegments).  Default value: null.'
  id: allelic_counts
  inputBinding:
    position: 0
    prefix: --allelic-counts
  type: File?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Input file containing denoised copy ratios (output of DenoiseReadCounts).  Default
    value: .'
  id: denoised_copy_ratios
  inputBinding:
    position: 0
    prefix: --denoised-copy-ratios
  type: null?
- doc: 'A configuration file to use with the GATK.  Default value: null.'
  id: gatk_config_file
  inputBinding:
    position: 0
    prefix: --gatk-config-file
  type: string?
- doc: 'If the GCS bucket channel errors out, how many times it will attempt to re-initiate
    the connection  Default value: 20.'
  id: gcs_max_retries
  inputBinding:
    position: 0
    prefix: --gcs-max-retries
  type: int?
- doc: 'Project to bill when accessing "requester pays" buckets. If unset, these buckets
    cannot be accessed.  Default value: .'
  id: gcs_project_for_requester_pays
  inputBinding:
    position: 0
    prefix: --gcs-project-for-requester-pays
  type: string?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'Threshold length (in bp) for contigs to be plotted. Contigs with lengths less
    than this threshold will not be plotted. This can be used to filter out mitochondrial
    contigs, unlocalized contigs, etc.  Default value: 1000000.'
  id: minimum_contig_length
  inputBinding:
    position: 0
    prefix: --minimum-contig-length
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Temp directory to use.  Default value: null.'
  id: tmp_dir
  inputBinding:
    position: 0
    prefix: --tmp-dir
  type: string?
- doc: 'Whether to use the JdkDeflater (as opposed to IntelDeflater)  Default value:
    false. Possible values: {true, false}'
  id: use_jdk_deflater
  inputBinding:
    position: 0
    prefix: --use-jdk-deflater
  type: boolean?
- doc: 'Whether to use the JdkInflater (as opposed to IntelInflater)  Default value:
    false. Possible values: {true, false}'
  id: use_jdk_inflater
  inputBinding:
    position: 0
    prefix: --use-jdk-inflater
  type: boolean?
- doc: ':LogLevel Control verbosity of logging.  Default value: INFO. Possible values:
    {ERROR, WARNING, INFO, DEBUG}'
  id: verbosity
  inputBinding:
    position: 0
    prefix: --verbosity
  type: string?
- doc: 'display the version number for this tool  Default value: false. Possible values:
    {true, false}'
  id: version
  inputBinding:
    position: 0
    prefix: --version
  type: boolean?
- doc: 'display hidden arguments  Default value: false. Possible values: {true, false}'
  id: showHidden
  inputBinding:
    position: 0
    prefix: --showHidden
  type: boolean?
- doc: ''
  id: Dsamjdk.use_async_io_write_samtools
  inputBinding:
    position: 0
    prefix: -Dsamjdk.use_async_io_write_samtools
  type: boolean
