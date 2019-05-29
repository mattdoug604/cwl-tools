#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- LearnReadOrientationModel
class: CommandLineTool
cwlVersion: v1.0
id: gatk_LearnReadOrientationModel
inputs:
- doc: a table of F1R2 and depth counts  Required.
  id: alt_table
  inputBinding:
    position: 0
    prefix: --alt-table
  type: File
- doc: table of artifact priors  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: File
- doc: histograms of depths over ref sites for each reference context  Required.
  id: ref_hist
  inputBinding:
    position: 0
    prefix: --ref-hist
  type: File
- doc: 'histograms of depth 1 alt sites  Default value: null.'
  id: alt_hist
  inputBinding:
    position: 0
    prefix: --alt-hist
  type: File?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: ':DoubleStop the EM when the distance between parameters between iterations
    falls below this value Default value: 1.0E-4.'
  id: convergence_threshold
  inputBinding:
    position: 0
    prefix: --convergence-threshold
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
- doc: 'sites with depth higher than this value will be grouped  Default value: 200.'
  id: max_depth
  inputBinding:
    position: 0
    prefix: --max-depth
  type: int?
- doc: 'give up on EM after this many iterations  Default value: 20.'
  id: num_em_iterations
  inputBinding:
    position: 0
    prefix: --num-em-iterations
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
