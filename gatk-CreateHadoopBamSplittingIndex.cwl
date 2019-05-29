#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CreateHadoopBamSplittingIndex
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CreateHadoopBamSplittingIndex
inputs:
- doc: BAM file to create a HadoopBam splitting index for  Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Set this to create a bai index at the same time as creating a splitting index  Default
    value: false. Possible values: {true, false}'
  id: create_bai
  inputBinding:
    position: 0
    prefix: --create-bai
  type: boolean?
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
- doc: 'The BAM splitting_index file. If this is unspecified an index will be created
    with the same name as the input file but with the additional extension .splitting-bai  Default
    value: null.'
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: File?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: ':ValidationStringency Validation stringency for all SAM/BAM/CRAM/SRA files
    read by this program.  The default stringency value SILENT can improve performance
    when processing a BAM file in which variable-length data (read, qualities, tags)
    do not otherwise need to be decoded.  Default value: SILENT. Possible values:
    {STRICT, LENIENT, SILENT}'
  id: read_validation_stringency
  inputBinding:
    position: 0
    prefix: --read-validation-stringency
  type: string?
- doc: 'Splitting index granularity, an entry is created in the index every this many
    reads. Default value: 4096.'
  id: splitting_index_granularity
  inputBinding:
    position: 0
    prefix: --splitting-index-granularity
  type: int?
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
