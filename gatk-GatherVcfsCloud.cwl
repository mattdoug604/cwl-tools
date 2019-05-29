#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- GatherVcfsCloud
class: CommandLineTool
cwlVersion: v1.0
id: gatk_GatherVcfsCloud
inputs:
- doc: Input VCF file(s).  This argument must be specified at least once. Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: string
- doc: Output VCF file.  Required.
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
- doc: 'Size of the cloud-only prefetch buffer (in MB; 0 to disable).  Default value:
    2.'
  id: cloud_prefetch_buffer
  inputBinding:
    position: 0
    prefix: --cloud-prefetch-buffer
  type: int?
- doc: 'If true, create a VCF index when writing a coordinate-sorted VCF file.  Default
    value: true. Possible values: {true, false}'
  id: create_output_variant_index
  inputBinding:
    position: 0
    prefix: --create-output-variant-index
  type: boolean?
- doc: ':GatherType      Choose which method should be used to gather: BLOCK gathering
    is faster but onlyworks when you have both bgzipped inputs and outputs, while
    CONVENTIONAL gather is much slower but should work on all vcf files. AUTOMATIC
    chooses BLOCK if possible and CONVENTIONAL otherwise.  Default value: AUTOMATIC.
    Possible values: {BLOCK, CONVENTIONAL, AUTOMATIC}'
  id: gather_type
  inputBinding:
    position: 0
    prefix: --gather-type
  type: string?
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
- doc: "Don't check relative ordering of contigs when doing a conventional gather\
    \  Default value: false. Possible values: {true, false}"
  id: disable_contig_ordering_check
  inputBinding:
    position: 0
    prefix: --disable-contig-ordering-check
  type: boolean?
- doc: ':BooleanDisable sanity checks to improve performance, may result in silently
    creating corrupted outputs data  Default value: false. Possible values: {true,
    false}'
  id: ignore_safety_checks
  inputBinding:
    position: 0
    prefix: --ignore-safety-checks
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
