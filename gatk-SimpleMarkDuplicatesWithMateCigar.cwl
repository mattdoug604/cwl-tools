#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- SimpleMarkDuplicatesWithMateCigar
class: CommandLineTool
cwlVersion: v1.0
id: gatk_SimpleMarkDuplicatesWithMateCigar
inputs:
- doc: One or more input SAM or BAM files to analyze. Must be coordinate sorted.  This
    argument must be specified at least once. Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: string
- doc: to write duplication metrics to  Required.
  id: METRICS_FILE
  inputBinding:
    position: 0
    prefix: --METRICS_FILE
  type: File
- doc: The output file to write marked records to  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: 'Add PG tag to each read in a SAM or BAM  Default value: true. Possible values:
    {true, false}'
  id: ADD_PG_TAG_TO_READS
  inputBinding:
    position: 0
    prefix: --ADD_PG_TAG_TO_READS
  type: boolean?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: ':SortOrder If not null, assume that the input file has this order even if
    the header says otherwise. Default value: null. Possible values: {unsorted, queryname,
    coordinate, duplicate, unknown}  Cannot be used in conjuction with argument(s)
    ASSUME_SORTED (AS)'
  id: ASSUME_SORT_ORDER
  inputBinding:
    position: 0
    prefix: --ASSUME_SORT_ORDER
  type: string?
- doc: 'If true, assume that the input file is coordinate sorted even if the header
    says otherwise. Deprecated, used ASSUME_SORT_ORDER=coordinate instead.  Default
    value: false. Possible values: {true, false}  Cannot be used in conjuction with
    argument(s) ASSUME_SORT_ORDER (ASO) ASSUME_SORT_ORDER (ASO)'
  id: ASSUME_SORTED
  inputBinding:
    position: 0
    prefix: --ASSUME_SORTED
  type: boolean?
- doc: 'Barcode SAM tag (ex. BC for 10X Genomics)  Default value: null.'
  id: BARCODE_TAG
  inputBinding:
    position: 0
    prefix: --BARCODE_TAG
  type: string?
- doc: "Clear DT tag from input SAM records. Should be set to false if input SAM doesn't\
    \ have this tag.  Default true  Default value: true. Possible values: {true, false}"
  id: CLEAR_DT
  inputBinding:
    position: 0
    prefix: --CLEAR_DT
  type: boolean?
- doc: "Comment(s) to include in the output file's header.  This argument may be specified\
    \ 0 or more times. Default value: null."
  id: COMMENT
  inputBinding:
    position: 0
    prefix: --COMMENT
  type: string?
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
- doc: ':ScoringStrategy The scoring strategy for choosing the non-duplicate among
    candidates.  Default value: SUM_OF_BASE_QUALITIES. Possible values: {SUM_OF_BASE_QUALITIES,
    TOTAL_MAPPED_REFERENCE_LENGTH, RANDOM}'
  id: DUPLICATE_SCORING_STRATEGY
  inputBinding:
    position: 0
    prefix: --DUPLICATE_SCORING_STRATEGY
  type: string?
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
- doc: Maximum number of file handles to keep open when spilling read ends to disk.
    Set this number a little lower than the per-process maximum number of file that
    may be open. This
  id: MAX_FILE_HANDLES_FOR_READ_ENDS_MAP
  inputBinding:
    position: 0
    prefix: --MAX_FILE_HANDLES_FOR_READ_ENDS_MAP
  type: int?
- doc: "' command on a Unix system.  Default value: 8000."
  id: n
  inputBinding:
    position: 0
    prefix: -n
  type: boolean?
- doc: This number is the maximum size of a set of duplicate reads for which we will
    attempt to determine which are optical duplicates.  Please be aware that if you
    raise this value too high and do encounter a very large set of duplicate reads,
    it will severely affect the
  id: MAX_OPTICAL_DUPLICATE_SET_SIZE
  inputBinding:
    position: 0
    prefix: --MAX_OPTICAL_DUPLICATE_SET_SIZE
  type: long?
- doc: 'Default value: 300000.'
  id: '1.'
  inputBinding:
    position: 0
    prefix: '-1.'
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
- doc: 'This option is obsolete. ReadEnds will always be spilled to disk.  Default
    value: 50000.'
  id: MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP
  inputBinding:
    position: 0
    prefix: --MAX_SEQUENCES_FOR_DISK_READ_ENDS_MAP
  type: int?
- doc: 'The maximum offset between two duplicate clusters in order to consider them
    optical duplicates. The default is appropriate for unpatterned versions of the
    Illumina platform. For the patterned flowcell models, 2500 is moreappropriate.
    For other platforms and models, users should experiment to find what works best.  Default
    value: 100.'
  id: OPTICAL_DUPLICATE_PIXEL_DISTANCE
  inputBinding:
    position: 0
    prefix: --OPTICAL_DUPLICATE_PIXEL_DISTANCE
  type: int?
- doc: 'Value of CL tag of PG record to be created. If not supplied the command line
    will be detected automatically.  Default value: null.'
  id: PROGRAM_GROUP_COMMAND_LINE
  inputBinding:
    position: 0
    prefix: --PROGRAM_GROUP_COMMAND_LINE
  type: string?
- doc: 'Value of PN tag of PG record to be created.  Default value: SimpleMarkDuplicatesWithMateCigar.'
  id: PROGRAM_GROUP_NAME
  inputBinding:
    position: 0
    prefix: --PROGRAM_GROUP_NAME
  type: string?
- doc: 'Value of VN tag of PG record to be created. If not specified, the version
    will be detected automatically.  Default value: null.'
  id: PROGRAM_GROUP_VERSION
  inputBinding:
    position: 0
    prefix: --PROGRAM_GROUP_VERSION
  type: string?
- doc: ':StringThe program record ID for the @PG record(s) created by this program.
    Set to null to disable PG record creation.  This string may have a suffix appended
    to avoid collision with other program record IDs.  Default value: MarkDuplicates.'
  id: PROGRAM_RECORD_ID
  inputBinding:
    position: 0
    prefix: --PROGRAM_RECORD_ID
  type: boolean?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: "MarkDuplicates can use the tile and cluster positions to estimate the rate\
    \ of optical duplication in addition to the dominant source of duplication, PCR,\
    \ to provide a more accurate estimation of library size. By default (with no READ_NAME_REGEX\
    \ specified), MarkDuplicates will attempt to extract coordinates using a split\
    \ on ':' (see Note below). Set READ_NAME_REGEX to 'null' to disable optical duplicate\
    \ detection. Note that without optical duplicate counts, library size estimation\
    \ will be less accurate. If the read name does not follow a standard Illumina\
    \ colon-separation convention, but does contain tile and x,y coordinates, a regular\
    \ expression can be specified to extract three variables: tile/region, x coordinate\
    \ and y coordinate from a read name. The regular expression must contain three\
    \ capture groups for the three variables, in order. It must match the entire read\
    \ name.   e.g. if field names were separated by semi-colon (';') this example\
    \ regex could be specified      (?:.*;)?([0-9]+)[^;]*;([0-9]+)[^;]*;([0-9]+)[^;]*$\
    \ Note that if no READ_NAME_REGEX is specified, the read name is split on ':'.\
    \   For 5 element names, the 3rd, 4th and 5th elements are assumed to be tile,\
    \ x and y values.   For 7 element names (CASAVA 1.8), the 5th, 6th, and 7th elements\
    \ are assumed to be tile, x and y values. Default value: <optimized capture of\
    \ last three ':' separated fields as numeric values>."
  id: READ_NAME_REGEX
  inputBinding:
    position: 0
    prefix: --READ_NAME_REGEX
  type: string?
- doc: 'Read one barcode SAM tag (ex. BX for 10X Genomics)  Default value: null.'
  id: READ_ONE_BARCODE_TAG
  inputBinding:
    position: 0
    prefix: --READ_ONE_BARCODE_TAG
  type: string?
- doc: 'Read two barcode SAM tag (ex. BX for 10X Genomics)  Default value: null.'
  id: READ_TWO_BARCODE_TAG
  inputBinding:
    position: 0
    prefix: --READ_TWO_BARCODE_TAG
  type: string?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: 'If true do not write duplicates to the output file instead of writing them
    with appropriate flags set.  Default value: false. Possible values: {true, false}'
  id: REMOVE_DUPLICATES
  inputBinding:
    position: 0
    prefix: --REMOVE_DUPLICATES
  type: boolean?
- doc: "If true remove 'optical' duplicates and other duplicates that appear to have\
    \ arisen from the sequencing process instead of the library preparation process,\
    \ even if REMOVE_DUPLICATES is false. If REMOVE_DUPLICATES is true, all duplicates\
    \ are removed and this option is ignored.  Default value: false. Possible values:\
    \ {true, false}"
  id: REMOVE_SEQUENCING_DUPLICATES
  inputBinding:
    position: 0
    prefix: --REMOVE_SEQUENCING_DUPLICATES
  type: boolean?
- doc: 'This number, plus the maximum RAM available to the JVM, determine the memory
    footprint used by some of the sorting collections.  If you are running out of
    memory, try reducing this number.  Default value: 0.25.'
  id: SORTING_COLLECTION_SIZE_RATIO
  inputBinding:
    position: 0
    prefix: --SORTING_COLLECTION_SIZE_RATIO
  type: double?
- doc: 'If a read appears in a duplicate set, add two tags. The first tag, DUPLICATE_SET_SIZE_TAG
    (DS), indicates the size of the duplicate set. The smallest possible DS value
    is 2 which occurs when two reads map to the same portion of the reference only
    one of which is marked as duplicate. The second tag, DUPLICATE_SET_INDEX_TAG (DI),
    represents a unique identifier for the duplicate set to which the record belongs.
    This identifier is the index-in-file of the representative read that was selected
    out of the duplicate set.  Default value: false. Possible values: {true, false}'
  id: TAG_DUPLICATE_SET_MEMBERS
  inputBinding:
    position: 0
    prefix: --TAG_DUPLICATE_SET_MEMBERS
  type: boolean?
- doc: ':DuplicateTaggingPolicy Determines how duplicate types are recorded in the
    DT optional attribute.  Default value: DontTag. Possible values: {DontTag, OpticalOnly,
    All}'
  id: TAGGING_POLICY
  inputBinding:
    position: 0
    prefix: --TAGGING_POLICY
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
