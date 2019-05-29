#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CallCopyRatioSegments
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CallCopyRatioSegments
inputs:
- doc: Input file containing copy-ratio segments (.cr.seg output of ModelSegments).  Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: File
- doc: Output file for called copy-ratio segments.  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Threshold on z-score of non-log2 copy ratio used for calling segments.  Default
    value: 2.0.'
  id: calling_copy_ratio_z_score_threshold
  inputBinding:
    position: 0
    prefix: --calling-copy-ratio-z-score-threshold
  type: double?
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
- doc: 'Lower bound on non-log2 copy ratio used for determining copy-neutral segments.  Default
    value: 0.9.'
  id: neutral_segment_copy_ratio_lower_bound
  inputBinding:
    position: 0
    prefix: --neutral-segment-copy-ratio-lower-bound
  type: double?
- doc: 'Upper bound on non-log2 copy ratio used for determining copy-neutral segments.  Default
    value: 1.1.'
  id: neutral_segment_copy_ratio_upper_bound
  inputBinding:
    position: 0
    prefix: --neutral-segment-copy-ratio-upper-bound
  type: double?
- doc: 'Threshold on z-score of non-log2 copy ratio used for determining outlier copy-neutral
    segments.  If non-log2 copy ratio z-score is above this threshold for a copy-neutral
    segment, it is considered an outlier and not used in the calculation of the length-weighted
    mean and standard deviation used for calling.  Default value: 2.0.'
  id: outlier_neutral_segment_copy_ratio_z_score_threshold
  inputBinding:
    position: 0
    prefix: --outlier-neutral-segment-copy-ratio-z-score-threshold
  type: double?
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
