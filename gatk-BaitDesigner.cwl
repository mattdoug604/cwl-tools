#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- BaitDesigner
class: CommandLineTool
cwlVersion: v1.0
id: gatk_BaitDesigner
inputs:
- doc: picard.jar BaitDesigner \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: The name of the bait design  Required.
  id: DESIGN_NAME
  inputBinding:
    position: 0
    prefix: --DESIGN_NAME
  type: string
- doc: Reference sequence file.  Required.
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File
- doc: The file with design parameters and targets  Required.
  id: TARGETS
  inputBinding:
    position: 0
    prefix: --TARGETS
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'The desired offset between the start of one bait and the start of another
    bait for the same target.  Default value: 80.'
  id: BAIT_OFFSET
  inputBinding:
    position: 0
    prefix: --BAIT_OFFSET
  type: int?
- doc: 'The length of each individual bait to design  Default value: 120.'
  id: BAIT_SIZE
  inputBinding:
    position: 0
    prefix: --BAIT_SIZE
  type: int?
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
- doc: 'If true design baits on the strand of the target feature, if false always
    design on the + strand of the genome.  Default value: false. Possible values:
    {true, false}'
  id: DESIGN_ON_TARGET_STRAND
  inputBinding:
    position: 0
    prefix: --DESIGN_ON_TARGET_STRAND
  type: boolean?
- doc: ':DesignStrategy The design strategy to use to layout baits across each target  Default
    value: FixedOffset. Possible values: {CenteredConstrained, FixedOffset, Simple}'
  id: DESIGN_STRATEGY
  inputBinding:
    position: 0
    prefix: --DESIGN_STRATEGY
  type: string?
- doc: 'If true, fill up the pools with alternating fwd and rc copies of all baits.
    Equal copies of all baits will always be maintained  Default value: true. Possible
    values: {true, false}'
  id: FILL_POOLS
  inputBinding:
    position: 0
    prefix: --FILL_POOLS
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
- doc: 'The left amplification primer to prepend to all baits for synthesis  Default
    value: ATCGCACCAGCGTGT.'
  id: LEFT_PRIMER
  inputBinding:
    position: 0
    prefix: --LEFT_PRIMER
  type: string?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: ":BooleanIf true merge targets that are 'close enough' that designing against\
    \ a merged target would be more efficient.  Default value: true. Possible values:\
    \ {true, false}"
  id: MERGE_NEARBY_TARGETS
  inputBinding:
    position: 0
    prefix: --MERGE_NEARBY_TARGETS
  type: boolean?
- doc: 'The minimum number of baits to design per target.  Default value: 2.'
  id: MINIMUM_BAITS_PER_TARGET
  inputBinding:
    position: 0
    prefix: --MINIMUM_BAITS_PER_TARGET
  type: int?
- doc: ':BooleanIf true also output .design.txt files per pool with one line per bait
    sequence  Default value: true. Possible values: {true, false}'
  id: OUTPUT_AGILENT_FILES
  inputBinding:
    position: 0
    prefix: --OUTPUT_AGILENT_FILES
  type: boolean?
- doc: 'The output directory. If not provided then the DESIGN_NAME will be used as
    the output Default value: null.'
  id: OUTPUT_DIRECTORY
  inputBinding:
    position: 0
    prefix: --OUTPUT_DIRECTORY
  type: Directory?
- doc: 'Pad the input targets by this amount when designing baits. Padding is applied
    on both sides in this amount.  Default value: 0.'
  id: PADDING
  inputBinding:
    position: 0
    prefix: --PADDING
  type: int?
- doc: 'The size of pools or arrays for synthesis. If no pool files are desired, can
    be set to 0. Default value: 55000.'
  id: POOL_SIZE
  inputBinding:
    position: 0
    prefix: --POOL_SIZE
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Baits that have more than REPEAT_TOLERANCE soft or hard masked bases will
    not be allowed Default value: 50.'
  id: REPEAT_TOLERANCE
  inputBinding:
    position: 0
    prefix: --REPEAT_TOLERANCE
  type: int?
- doc: 'The right amplification primer to prepend to all baits for synthesis  Default
    value: CACTGCGGCTCCTCA.'
  id: RIGHT_PRIMER
  inputBinding:
    position: 0
    prefix: --RIGHT_PRIMER
  type: string?
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
