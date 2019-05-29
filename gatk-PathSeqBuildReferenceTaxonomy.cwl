#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- PathSeqBuildReferenceTaxonomy
class: CommandLineTool
cwlVersion: v1.0
id: gatk_PathSeqBuildReferenceTaxonomy
inputs:
- doc: Local path for the output file. By convention, the extension should be ".db"  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: string
- doc: Reference sequence file  Required.
  id: reference
  inputBinding:
    position: 0
    prefix: --reference
  type: string
- doc: Local path to taxonomy dump tarball (taxdump.tar.gz available at ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/)  Required.
  id: tax_dump
  inputBinding:
    position: 0
    prefix: --tax-dump
  type: string
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
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
- doc: 'Local path to Genbank catalog file (gbXXX.catalog.XXX.txt.gz at ftp://ftp.ncbi.nlm.nih.gov/genbank/catalog/)  Default
    value: null.'
  id: genbank_catalog
  inputBinding:
    position: 0
    prefix: --genbank-catalog
  type: string?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'Minimum reference contig length for non-viruses  Default value: 0.'
  id: min_non_virus_contig_length
  inputBinding:
    position: 0
    prefix: --min-non-virus-contig-length
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Local path to catalog file (RefSeq-releaseXX.catalog.gz available at ftp://ftp.ncbi.nlm.nih.gov/refseq/release/release-catalog/)  Default
    value: null.'
  id: refseq_catalog
  inputBinding:
    position: 0
    prefix: --refseq-catalog
  type: string?
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
