#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CollectHsMetrics
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CollectHsMetrics
inputs:
- doc: picard.jar CollectHsMetrics \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: An interval list file that contains the locations of the baits used.  This
    argument must be specified at least once. Required.
  id: BAIT_INTERVALS
  inputBinding:
    position: 0
    prefix: --BAIT_INTERVALS
  type: File
- doc: An aligned SAM or BAM file.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: The output file to write the metrics to.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: An interval list file that contains the locations of the targets.  This argument
    must be specified at least once. Required.
  id: TARGET_INTERVALS
  inputBinding:
    position: 0
    prefix: --TARGET_INTERVALS
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
- doc: 'Bait set name. If not provided it is inferred from the filename of the bait
    intervals. Default value: null.'
  id: BAIT_SET_NAME
  inputBinding:
    position: 0
    prefix: --BAIT_SET_NAME
  type: string?
- doc: 'True if we are to clip overlapping reads, false otherwise.  Default value:
    true. Possible values: {true, false}'
  id: CLIP_OVERLAPPING_READS
  inputBinding:
    position: 0
    prefix: --CLIP_OVERLAPPING_READS
  type: boolean?
- doc: 'Compression level for all compressed files created (e.g. BAM and VCF).  Default
    value: 2.'
  id: COMPRESSION_LEVEL
  inputBinding:
    position: 0
    prefix: --COMPRESSION_LEVEL
  type: int?
- doc: ':IntegerParameter to set a max coverage limit for Theoretical Sensitivity
    calculations. Default is 200.  Default value: 200.'
  id: COVERAGE_CAP
  inputBinding:
    position: 0
    prefix: --COVERAGE_CAP
  type: boolean?
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
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: ':MetricAccumulationLevel The level(s) at which to accumulate metrics.  This
    argument may be specified 0 or more times. Default value: [ALL_READS]. Possible
    values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP}'
  id: METRIC_ACCUMULATION_LEVEL
  inputBinding:
    position: 0
    prefix: --METRIC_ACCUMULATION_LEVEL
  type: string?
- doc: 'Minimum base quality for a base to contribute coverage.  Default value: 20.'
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
- doc: "The maximum distance between a read and the nearest probe/bait/amplicon for\
    \ the read to be considered 'near probe' and included in percent selected.  Default\
    \ value: 250."
  id: NEAR_DISTANCE
  inputBinding:
    position: 0
    prefix: --NEAR_DISTANCE
  type: int?
- doc: 'An optional file to output per base coverage information to. The per-base
    file contains one line per target base and can grow very large. It is not recommended
    for use with large target sets.  Default value: null.'
  id: PER_BASE_COVERAGE
  inputBinding:
    position: 0
    prefix: --PER_BASE_COVERAGE
  type: File?
- doc: 'An optional file to output per target coverage information to.  Default value:
    null.'
  id: PER_TARGET_COVERAGE
  inputBinding:
    position: 0
    prefix: --PER_TARGET_COVERAGE
  type: File?
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
- doc: 'Sample Size used for Theoretical Het Sensitivity sampling. Default is 10000.  Default
    value: 10000.'
  id: SAMPLE_SIZE
  inputBinding:
    position: 0
    prefix: --SAMPLE_SIZE
  type: int?
- doc: 'Output for Theoretical Sensitivity metrics where the allele fractions are
    provided by the ALLELE_FRACTION argument.  Default value: null.'
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
