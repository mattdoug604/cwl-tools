#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CollectOxoGMetrics
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CollectOxoGMetrics
inputs:
- doc: picard.jar CollectOxoGMetrics \<br />      I=input.bam \<br />      O=oxoG_metrics.txt
    \<br
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Input BAM file for analysis.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: Location of output metrics file to write.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: Reference sequence file.  Required.
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Compression level for all compressed files created (e.g. BAM and VCF).  Default
    value: 2.'
  id: COMPRESSION_LEVEL
  inputBinding:
    position: 0
    prefix: --COMPRESSION_LEVEL
  type: int?
- doc: 'The number of context bases to include on each side of the assayed G/C base.  Default
    value: 1.'
  id: CONTEXT_SIZE
  inputBinding:
    position: 0
    prefix: --CONTEXT_SIZE
  type: int?
- doc: 'The optional set of sequence contexts to restrict analysis to. If not supplied
    all contexts are analyzed.  This argument may be specified 0 or more times. Default
    value: .'
  id: CONTEXTS
  inputBinding:
    position: 0
    prefix: --CONTEXTS
  type: null?
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
- doc: 'VCF format dbSNP file, used to exclude regions around known polymorphisms
    from analysis. Default value: null.'
  id: DB_SNP
  inputBinding:
    position: 0
    prefix: --DB_SNP
  type: File?
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
- doc: 'Whether or not to include non-PF reads.  Default value: true. Possible values:
    {true, false}'
  id: INCLUDE_NON_PF_READS
  inputBinding:
    position: 0
    prefix: --INCLUDE_NON_PF_READS
  type: boolean?
- doc: 'An optional list of intervals to restrict analysis to.  Default value: null.'
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
- doc: 'The maximum insert size for a read to be included in analysis. Set of 0 to
    allow unpaired reads.  Default value: 600.'
  id: MAXIMUM_INSERT_SIZE
  inputBinding:
    position: 0
    prefix: --MAXIMUM_INSERT_SIZE
  type: int?
- doc: 'The minimum insert size for a read to be included in analysis. Set of 0 to
    allow unpaired reads.  Default value: 60.'
  id: MINIMUM_INSERT_SIZE
  inputBinding:
    position: 0
    prefix: --MINIMUM_INSERT_SIZE
  type: int?
- doc: 'The minimum mapping quality score for a base to be included in analysis.  Default
    value: 30.'
  id: MINIMUM_MAPPING_QUALITY
  inputBinding:
    position: 0
    prefix: --MINIMUM_MAPPING_QUALITY
  type: int?
- doc: 'The minimum base quality score for a base to be included in analysis.  Default
    value: 20.'
  id: MINIMUM_QUALITY_SCORE
  inputBinding:
    position: 0
    prefix: --MINIMUM_QUALITY_SCORE
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'For debugging purposes: stop after visiting this many sites with at least
    1X coverage. Default value: 2147483647.'
  id: STOP_AFTER
  inputBinding:
    position: 0
    prefix: --STOP_AFTER
  type: int?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
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
- doc: 'When available, use original quality scores for filtering.  Default value:
    true. Possible values: {true, false}'
  id: USE_OQ
  inputBinding:
    position: 0
    prefix: --USE_OQ
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
