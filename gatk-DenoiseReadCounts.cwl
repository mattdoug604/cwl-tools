#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- DenoiseReadCounts
class: CommandLineTool
cwlVersion: v1.0
id: gatk_DenoiseReadCounts
inputs:
- doc: Output file for denoised copy ratios.  Required.
  id: denoised_copy_ratios
  inputBinding:
    position: 0
    prefix: --denoised-copy-ratios
  type: File
- doc: Input TSV or HDF5 file containing integer read counts in genomic intervals
    for a single case sample (output of CollectReadCounts).  Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: File
- doc: Output file for standardized copy ratios.  GC-bias correction will be performed
    if annotations for GC content are provided.  Required.
  id: standardized_copy_ratios
  inputBinding:
    position: 0
    prefix: --standardized-copy-ratios
  type: File
- doc: 'Input file containing annotations for GC content in genomic intervals (output
    of AnnotateIntervals).  Intervals must be identical to and in the same order as
    those in the input read-counts file.  If a panel of normals is provided, this
    input will be ignored. Default value: null.'
  id: annotated_intervals
  inputBinding:
    position: 0
    prefix: --annotated-intervals
  type: File?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Input HDF5 file containing the panel of normals (output of CreateReadCountPanelOfNormals).
    Default value: null.'
  id: count_panel_of_normals
  inputBinding:
    position: 0
    prefix: --count-panel-of-normals
  type: File?
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
- doc: 'Number of eigensamples to use for denoising.  If not specified or if the number
    of eigensamples available in the panel of normals is smaller than this, all eigensamples
    will be used.  Default value: null.'
  id: number_of_eigensamples
  inputBinding:
    position: 0
    prefix: --number-of-eigensamples
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
