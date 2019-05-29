#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- PathSeqBuildKmers
class: CommandLineTool
cwlVersion: v1.0
id: gatk_PathSeqBuildKmers
inputs:
- doc: for k-mer set output. Extension will be automatically added if not present
    (.hss for hash set or .bfi for Bloom filter)  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: File
- doc: Reference FASTA file path on local disk  Required.
  id: reference
  inputBinding:
    position: 0
    prefix: --reference
  type: string
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'If non-zero, creates a Bloom filter with this false positive probability  Default
    value: 0.0.'
  id: bloom_false_positive_probability
  inputBinding:
    position: 0
    prefix: --bloom-false-positive-probability
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
- doc: 'Comma-delimited list of base indices (starting with 0) to mask in each k-mer  Default
    value: .'
  id: kmer_mask
  inputBinding:
    position: 0
    prefix: --kmer-mask
  type: string?
- doc: 'K-mer size, must be odd and less than 32  Default value: 31.'
  id: kmer_size
  inputBinding:
    position: 0
    prefix: --kmer-size
  type: int?
- doc: 'Spacing between successive k-mers  Default value: 1.'
  id: kmer_spacing
  inputBinding:
    position: 0
    prefix: --kmer-spacing
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
