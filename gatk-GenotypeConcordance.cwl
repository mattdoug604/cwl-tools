#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- GenotypeConcordance
class: CommandLineTool
cwlVersion: v1.0
id: gatk_GenotypeConcordance
inputs:
- doc: picard.jar GenotypeConcordance \
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: The VCF containing the call sample  Required.
  id: CALL_VCF
  inputBinding:
    position: 0
    prefix: --CALL_VCF
  type: File
- doc: Basename for the three metrics files that are to be written. Resulting files
    will be <OUTPUT>.genotype_concordance_summary_metrics, <OUTPUT>.genotype_concordance_detail_metrics,
    and <OUTPUT>.genotype_concordance_contingency_metrics.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: The VCF containing the truth sample  Required.
  id: TRUTH_VCF
  inputBinding:
    position: 0
    prefix: --TRUTH_VCF
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'The name of the call sample within the call VCF. Not required if only one
    sample exists. Default value: null.'
  id: CALL_SAMPLE
  inputBinding:
    position: 0
    prefix: --CALL_SAMPLE
  type: string
- doc: 'Compression level for all compressed files created (e.g. BAM and VCF).  Default
    value: 2.'
  id: COMPRESSION_LEVEL
  inputBinding:
    position: 0
    prefix: --COMPRESSION_LEVEL
  type: int?
- doc: 'Whether to create a BAM index when writing a coordinate-sorted BAM file.  Default
    value: false. Possible values: {true, false}'
  id: CREATE_INDEX
  inputBinding:
    position: 0
    prefix: --CREATE_INDEX
  type: boolean?
- doc: 'Whether to create an MD5 digest for any BAM or FASTQ files created.    Default
    value: false. Possible values: {true, false}'
  id: CREATE_MD5_FILE
  inputBinding:
    position: 0
    prefix: --CREATE_MD5_FILE
  type: boolean?
- doc: 'Google Genomics API client_secrets.json file path.  Default value: client_secrets.json.'
  id: GA4GH_CLIENT_SECRETS
  inputBinding:
    position: 0
    prefix: --GA4GH_CLIENT_SECRETS
  type: string?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: ':BooleanDefault is false. If true, filter status of sites will be ignored
    so that we include filtered sites when calculating genotype concordance.   Default
    value: false. Possible values: {true, false}'
  id: IGNORE_FILTER_STATUS
  inputBinding:
    position: 0
    prefix: --IGNORE_FILTER_STATUS
  type: boolean?
- doc: 'If true, multiple interval lists will be intersected. If false multiple lists
    will be unioned.  Default value: true. Possible values: {true, false}'
  id: INTERSECT_INTERVALS
  inputBinding:
    position: 0
    prefix: --INTERSECT_INTERVALS
  type: boolean?
- doc: 'One or more interval list files that will be used to limit the genotype concordance.  Note
    - if intervals are specified, the VCF files must be indexed.  This argument may
    be specified 0 or more times. Default value: null.'
  id: INTERVALS
  inputBinding:
    position: 0
    prefix: --INTERVALS
  type: File?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: 'Genotypes below this depth will have genotypes classified as LowDp.  Default
    value: 0.'
  id: MIN_DP
  inputBinding:
    position: 0
    prefix: --MIN_DP
  type: int?
- doc: 'Genotypes below this genotype quality will have genotypes classified as LowGq.  Default
    value: 0.'
  id: MIN_GQ
  inputBinding:
    position: 0
    prefix: --MIN_GQ
  type: int?
- doc: 'Default is false, which follows the GA4GH Scheme. If true, missing sites in
    the truth set will be treated as HOM_REF sites and sites missing in both the truth
    and call sets will be true negatives. Useful when hom ref sites are left out of
    the truth set. This flag can only be used with a high confidence interval list.  Default
    value: false. Possible values: {true, false}'
  id: MISSING_SITES_HOM_REF
  inputBinding:
    position: 0
    prefix: --MISSING_SITES_HOM_REF
  type: boolean?
- doc: 'If true, output all rows in detailed statistics even when count == 0.  When
    false only output rows with non-zero counts.  Default value: false. Possible values:
    {true, false}'
  id: OUTPUT_ALL_ROWS
  inputBinding:
    position: 0
    prefix: --OUTPUT_ALL_ROWS
  type: boolean?
- doc: 'Output a VCF annotated with concordance information.  Default value: false.
    Possible values: {true, false}'
  id: OUTPUT_VCF
  inputBinding:
    position: 0
    prefix: --OUTPUT_VCF
  type: boolean?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
- doc: 'The name of the truth sample within the truth VCF. Not required if only one
    sample exists. Default value: null.'
  id: TRUTH_SAMPLE
  inputBinding:
    position: 0
    prefix: --TRUTH_SAMPLE
  type: string
- doc: 'Use the JDK Deflater instead of the Intel Deflater for writing compressed
    output  Default value: false. Possible values: {true, false}'
  id: USE_JDK_DEFLATER
  inputBinding:
    position: 0
    prefix: --USE_JDK_DEFLATER
  type: boolean?
- doc: 'Use the JDK Inflater instead of the Intel Inflater for reading compressed
    input  Default value: false. Possible values: {true, false}'
  id: USE_JDK_INFLATER
  inputBinding:
    position: 0
    prefix: --USE_JDK_INFLATER
  type: boolean?
- doc: 'If true, use the VCF index, else iterate over the entire VCF.  Default value:
    false. Possible values: {true, false}'
  id: USE_VCF_INDEX
  inputBinding:
    position: 0
    prefix: --USE_VCF_INDEX
  type: boolean?
- doc: ':ValidationStringency Validation stringency for all SAM files read by this
    program.  Setting stringency to SILENT can improve performance when processing
    a BAM file in which variable-length data (read, qualities, tags) do not otherwise
    need to be decoded.  Default value: STRICT. Possible values: {STRICT, LENIENT,
    SILENT}'
  id: VALIDATION_STRINGENCY
  inputBinding:
    position: 0
    prefix: --VALIDATION_STRINGENCY
  type: string?
- doc: ':LogLevel          Control verbosity of logging.  Default value: INFO. Possible
    values: {ERROR, WARNING, INFO, DEBUG}'
  id: VERBOSITY
  inputBinding:
    position: 0
    prefix: --VERBOSITY
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
