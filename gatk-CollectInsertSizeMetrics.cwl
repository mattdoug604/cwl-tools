#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CollectInsertSizeMetrics
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CollectInsertSizeMetrics
inputs:
- doc: picard.jar CollectInsertSizeMetrics \<br />      I=input.bam \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: to write insert size Histogram chart to.  Required.
  id: Histogram_FILE
  inputBinding:
    position: 0
    prefix: --Histogram_FILE
  type: File
- doc: Input SAM or BAM file.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: to write the output to.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'If true (default), then the sort order in the header file will be ignored.  Default
    value: true. Possible values: {true, false}'
  id: ASSUME_SORTED
  inputBinding:
    position: 0
    prefix: --ASSUME_SORTED
  type: boolean?
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
- doc: 'Generate mean, sd and plots by trimming the data down to MEDIAN + DEVIATIONS*MEDIAN_ABSOLUTE_DEVIATION.
    This is done because insert size data typically includes enough anomalous values
    from chimeras and other artifacts to make the mean and sd grossly misleading regarding
    the real distribution.  Default value: 10.0.'
  id: DEVIATIONS
  inputBinding:
    position: 0
    prefix: --DEVIATIONS
  type: double?
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
- doc: 'Explicitly sets the Histogram width, overriding automatic truncation of Histogram
    tail. Also, when calculating mean and standard deviation, only bins <= Histogram_WIDTH
    will be included.  Default value: null.'
  id: HISTOGRAM_WIDTH
  inputBinding:
    position: 0
    prefix: --HISTOGRAM_WIDTH
  type: int?
- doc: 'If true, also include reads marked as duplicates in the insert size histogram.  Default
    value: false. Possible values: {true, false}'
  id: INCLUDE_DUPLICATES
  inputBinding:
    position: 0
    prefix: --INCLUDE_DUPLICATES
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
- doc: ':MetricAccumulationLevel The level(s) at which to accumulate metrics.    This
    argument may be specified 0 or more times. Default value: [ALL_READS]. Possible
    values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP}'
  id: METRIC_ACCUMULATION_LEVEL
  inputBinding:
    position: 0
    prefix: --METRIC_ACCUMULATION_LEVEL
  type: string?
- doc: 'When generating the Histogram, discard any data categories (out of FR, TANDEM,
    RF) that have fewer than this percentage of overall reads. (Range: 0 to 1).  Default
    value: 0.05.'
  id: MINIMUM_PCT
  inputBinding:
    position: 0
    prefix: --MINIMUM_PCT
  type: float?
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
- doc: 'Stop after processing N reads, mainly for debugging.  Default value: 0.'
  id: STOP_AFTER
  inputBinding:
    position: 0
    prefix: --STOP_AFTER
  type: long?
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
