#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CollectWgsMetrics
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CollectWgsMetrics
inputs:
- doc: picard.jar CollectWgsMetrics \<br />       I=input.bam \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Input SAM or BAM file.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: Output metrics file.  Required.
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
- doc: 'Allele fraction for which to calculate theoretical sensitivity.  This argument
    may be specified 0 or more times. Default value: [0.001, 0.005, 0.01, 0.02, 0.05,
    0.1, 0.2, 0.3, 0.5].'
  id: ALLELE_FRACTION
  inputBinding:
    position: 0
    prefix: --ALLELE_FRACTION
  type: string?
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
- doc: 'If true, count unpaired reads, and paired reads with one end unmapped  Default
    value: false. Possible values: {true, false}'
  id: COUNT_UNPAIRED
  inputBinding:
    position: 0
    prefix: --COUNT_UNPAIRED
  type: boolean?
- doc: 'Treat positions with coverage exceeding this value as if they had coverage
    at this value (but calculate the difference for PCT_EXC_CAPPED).  Default value:
    250.'
  id: COVERAGE_CAP
  inputBinding:
    position: 0
    prefix: --COVERAGE_CAP
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
- doc: ':BooleanDetermines whether to include the base quality histogram in the metrics
    file.  Default value: false. Possible values: {true, false}'
  id: INCLUDE_BQ_HISTOGRAM
  inputBinding:
    position: 0
    prefix: --INCLUDE_BQ_HISTOGRAM
  type: boolean?
- doc: 'An interval list file that contains the positions to restrict the assessment.
    Please note that all bases of reads that overlap these intervals will be considered,
    even if some of those bases extend beyond the boundaries of the interval. The
    ideal use case for this argument is to use it to restrict the calculation to a
    subset of (whole) contigs.  Default value: null.'
  id: INTERVALS
  inputBinding:
    position: 0
    prefix: --INTERVALS
  type: File?
- doc: 'At positions with coverage exceeding this value, completely ignore reads that
    accumulate beyond this value (so that they will not be considered for PCT_EXC_CAPPED).  Used
    to keep memory consumption in check, but could create bias if set too low  Default
    value: 100000.'
  id: LOCUS_ACCUMULATION_CAP
  inputBinding:
    position: 0
    prefix: --LOCUS_ACCUMULATION_CAP
  type: int?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: 'Minimum base quality for a base to contribute coverage. N bases will be treated
    as having a base quality of negative infinity and will therefore be excluded from
    coverage regardless of the value of this parameter.  Default value: 20.'
  id: MINIMUM_BASE_QUALITY
  inputBinding:
    position: 0
    prefix: --MINIMUM_BASE_QUALITY
  type: int?
- doc: 'Minimum mapping quality for a read to contribute coverage.  Default value:
    20.'
  id: MINIMUM_MAPPING_QUALITY
  inputBinding:
    position: 0
    prefix: --MINIMUM_MAPPING_QUALITY
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Average read length in the file. Default is 150.  Default value: 150.'
  id: READ_LENGTH
  inputBinding:
    position: 0
    prefix: --READ_LENGTH
  type: int?
- doc: 'Sample Size used for Theoretical Het Sensitivity sampling. Default is 10000.  Default
    value: 10000.'
  id: SAMPLE_SIZE
  inputBinding:
    position: 0
    prefix: --SAMPLE_SIZE
  type: int?
- doc: ''
  id: STOP_AFTER
  inputBinding:
    position: 0
    prefix: --STOP_AFTER
  type: long
- doc: 'Output for Theoretical Sensitivity metrics.  Default value: null.'
  id: THEORETICAL_SENSITIVITY_OUTPUT
  inputBinding:
    position: 0
    prefix: --THEORETICAL_SENSITIVITY_OUTPUT
  type: File?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
- doc: 'If true, fast algorithm is used.  Default value: false. Possible values: {true,
    false}'
  id: USE_FAST_ALGORITHM
  inputBinding:
    position: 0
    prefix: --USE_FAST_ALGORITHM
  type: boolean?
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
