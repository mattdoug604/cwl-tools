#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- AnalyzeCovariates
class: CommandLineTool
cwlVersion: v1.0
id: gatk_AnalyzeCovariates
inputs:
- doc: 'containing the BQSR second-pass report file  Default value: null.'
  id: after_report_file
  inputBinding:
    position: 0
    prefix: --after-report-file
  type: File?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'containing the BQSR first-pass report file  Default value: null.'
  id: before_report_file
  inputBinding:
    position: 0
    prefix: --before-report-file
  type: File?
- doc: 'Input covariates table file for on-the-fly base quality score recalibration  Default
    value: null.'
  id: bqsr_recal_file
  inputBinding:
    position: 0
    prefix: --bqsr-recal-file
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
- doc: 'do not emit warning messages related to suspicious last modification time
    order of inputs Default value: false. Possible values: {true, false}'
  id: ignore_last_modification_times
  inputBinding:
    position: 0
    prefix: --ignore-last-modification-times
  type: boolean?
- doc: 'location of the csv intermediate file  Default value: null.'
  id: intermediate_csv_file
  inputBinding:
    position: 0
    prefix: --intermediate-csv-file
  type: File?
- doc: 'location of the output report  Default value: null.'
  id: plots_report_file
  inputBinding:
    position: 0
    prefix: --plots-report-file
  type: File?
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
