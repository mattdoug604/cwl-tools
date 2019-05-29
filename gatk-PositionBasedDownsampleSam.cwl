#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- PositionBasedDownsampleSam
class: CommandLineTool
cwlVersion: v1.0
id: gatk_PositionBasedDownsampleSam
inputs:
- doc: picard.jar PositionBasedDownsampleSam \
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: The (approximate) fraction of reads to be kept, between 0 and 1.  Required.
  id: FRACTION
  inputBinding:
    position: 0
    prefix: --FRACTION
  type: double
- doc: The input SAM or BAM file to downsample.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: The output, downsampled, SAM or BAM file.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: 'Allow downsampling again despite this being a bad idea with possibly unexpected
    results. Default value: false. Possible values: {true, false}'
  id: ALLOW_MULTIPLE_DOWNSAMPLING_DESPITE_WARNINGS
  inputBinding:
    position: 0
    prefix: --ALLOW_MULTIPLE_DOWNSAMPLING_DESPITE_WARNINGS
  type: boolean?
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
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: "Use these regular expressions to parse read names in the input SAM file. Read\
    \ names are parsed to extract three variables: tile/region, x coordinate and y\
    \ coordinate. The x and y coordinates are used to determine the downsample decision.\
    \ Set this option to null to disable optical duplicate detection, e.g. for RNA-seq\
    \ The regular expression should contain three capture groups for the three variables,\
    \ in order. It must match the entire read name. Note that if the default regex\
    \ is specified, a regex match is not actually done, but instead the read name\
    \ is split on colons (:). For 5 element names, the 3rd, 4th and 5th elements are\
    \ assumed to be tile, x and y values. For 7 element names (CASAVA 1.8), the 5th,\
    \ 6th, and 7th elements are assumed to be tile, x and y values.  Default value:\
    \ <optimized capture of last three ':' separated fields as numeric values>."
  id: READ_NAME_REGEX
  inputBinding:
    position: 0
    prefix: --READ_NAME_REGEX
  type: string?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: 'Determines whether the duplicate tag should be reset since the downsampling
    requires re-marking duplicates.  Default value: true. Possible values: {true,
    false}'
  id: REMOVE_DUPLICATE_INFORMATION
  inputBinding:
    position: 0
    prefix: --REMOVE_DUPLICATE_INFORMATION
  type: boolean?
- doc: 'Stop after processing N reads, mainly for debugging.  Default value: null.'
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
