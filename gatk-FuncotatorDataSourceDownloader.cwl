#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- FuncotatorDataSourceDownloader
class: CommandLineTool
cwlVersion: v1.0
id: gatk_FuncotatorDataSourceDownloader
inputs:
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Extract the data sources to a sibling folder after they have been downloaded.  Default
    value: false. Possible values: {true, false}'
  id: extract_after_download
  inputBinding:
    position: 0
    prefix: --extract-after-download
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
- doc: 'Download the latest pre-packaged datasources for germline functional annotation.  Default
    value: false. Possible values: {true, false}  Cannot be used in conjuction with
    argument(s) getSomaticDataSources (somatic) testingOverrideDataSourcesSha256Path
    (testing-override-path-for-datasources-sha256) testingOverrideDataSourcesPath
    (testing-override-path-for-datasources)'
  id: germline
  inputBinding:
    position: 0
    prefix: --germline
  type: boolean?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'Output location for the data sources.  Default value: null.'
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: File?
- doc: 'Overwrite output file if it exists already.  Default value: false. Possible
    values: {true, false}'
  id: overwrite_output_file
  inputBinding:
    position: 0
    prefix: --overwrite-output-file
  type: boolean?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Download the latest pre-packaged datasources for somatic functional annotation.  Default
    value: false. Possible values: {true, false}  Cannot be used in conjuction with
    argument(s) getGermlineDataSources (germline) testingOverrideDataSourcesSha256Path
    (testing-override-path-for-datasources-sha256) testingOverrideDataSourcesPath
    (testing-override-path-for-datasources)'
  id: somatic
  inputBinding:
    position: 0
    prefix: --somatic
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
- doc: 'Validate the integrity of the data sources after downloading them using sha256.  Default
    value: false. Possible values: {true, false}'
  id: validate_integrity
  inputBinding:
    position: 0
    prefix: --validate-integrity
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
