#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- IlluminaBasecallsToSam
class: CommandLineTool
cwlVersion: v1.0
id: gatk_IlluminaBasecallsToSam
inputs:
- doc: picard.jar IlluminaBasecallsToSam \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Deprecated (use LIBRARY_PARAMS).  Tab-separated file for creating all output
    BAMs for barcoded run with single IlluminaBasecallsToSam invocation.  Columns
    are BARCODE, OUTPUT, SAMPLE_ALIAS, and LIBRARY_NAME.  Row with BARCODE=N is used
    to specify a file for no barcode match  Required.  Cannot be used in conjuction
    with argument(s) OUTPUT (O) SAMPLE_ALIAS (ALIAS) LIBRARY_NAME (LIB) LIBRARY_PARAMS
  id: BARCODE_PARAMS
  inputBinding:
    position: 0
    prefix: --BARCODE_PARAMS
  type: File
- doc: The basecalls directory.   Required.
  id: BASECALLS_DIR
  inputBinding:
    position: 0
    prefix: --BASECALLS_DIR
  type: File
- doc: Lane number.   Required.
  id: LANE
  inputBinding:
    position: 0
    prefix: --LANE
  type: int
- doc: Tab-separated file for creating all output BAMs for a lane with single IlluminaBasecallsToSam
    invocation.  The columns are OUTPUT, SAMPLE_ALIAS, and LIBRARY_NAME, BARCODE_1,
    BARCODE_2 ... BARCODE_X where X = number of barcodes per cluster (optional).  Row
    with BARCODE_1 set to 'N' is used to specify a file for no barcode match. You
    may also provide any 2 letter RG header attributes (excluding PU, CN, PL, and
    DT)  as columns in this file and the values for those columns will be inserted
    into the RG tag for the BAM file created for a given row.  Required.  Cannot be
    used in conjuction with argument(s) OUTPUT (O) SAMPLE_ALIAS (ALIAS) LIBRARY_NAME
    (LIB) BARCODE_PARAMS
  id: LIBRARY_PARAMS
  inputBinding:
    position: 0
    prefix: --LIBRARY_PARAMS
  type: File
- doc: Deprecated (use LIBRARY_PARAMS).  The output SAM or BAM file. Format is determined
    by extension.  Required.  Cannot be used in conjuction with argument(s) BARCODE_PARAMS
    LIBRARY_PARAMS
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: 'A description of the logical structure of clusters in an Illumina Run, i.e.
    a description of the structure IlluminaBasecallsToSam assumes the  data to be
    in. It should consist of /character pairs describing the number of cycles and
    the type of those cycles (B for Sample Barcode, M for molecular barcode, T for
    Template, and S for skip).  E.g. If the input data consists of 80 base clusters
    and we provide a read structure of "28T8M8B8S28T" then the sequence may be split
    up into four reads: * read one with 28 cycles (bases) of template * read two with
    8 cycles (bases) of molecular barcode (ex. unique molecular barcode) * read three
    with 8 cycles (bases) of sample barcode * 8 cycles (bases) skipped. * read four
    with 28 cycles (bases) of template The skipped cycles would NOT be included in
    an output SAM/BAM file or in read groups therein.  Required.'
  id: READ_STRUCTURE
  inputBinding:
    position: 0
    prefix: --READ_STRUCTURE
  type: int
- doc: The barcode of the run.  Prefixed to read names.  Required.
  id: RUN_BARCODE
  inputBinding:
    position: 0
    prefix: --RUN_BARCODE
  type: string
- doc: Deprecated (use LIBRARY_PARAMS).  The name of the sequenced sample  Required.  Cannot
    be used in conjuction with argument(s) BARCODE_PARAMS LIBRARY_PARAMS
  id: SAMPLE_ALIAS
  inputBinding:
    position: 0
    prefix: --SAMPLE_ALIAS
  type: string
- doc: The name of the sequencing center that produced the reads.  Used to set the
    @RG->CN header tag.  Required.
  id: SEQUENCING_CENTER
  inputBinding:
    position: 0
    prefix: --SEQUENCING_CENTER
  type: string
- doc: ':IlluminaAdapterPair Which adapters to look for in the read.  This argument
    may be specified 0 or more times. Default value: [INDEXED, DUAL_INDEXED, NEXTERA_V2,
    FLUIDIGM]. Possible values: {PAIRED_END, INDEXED, SINGLE_END, NEXTERA_V1, NEXTERA_V2,
    DUAL_INDEXED, FLUIDIGM, TRUSEQ_SMALLRNA, ALTERNATIVE_SINGLE_END}'
  id: ADAPTERS_TO_CHECK
  inputBinding:
    position: 0
    prefix: --ADAPTERS_TO_CHECK
  type: string?
- doc: 'Apply EAMSS filtering to identify inappropriately quality scored bases towards
    the ends of reads and convert their quality scores to Q2.  Default value: true.
    Possible values: {true, false}'
  id: APPLY_EAMSS_FILTER
  inputBinding:
    position: 0
    prefix: --APPLY_EAMSS_FILTER
  type: boolean?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: ':PopulateBarcode When should the sample barcode (as read by the sequencer)
    be placed on the reads in the BC tag?  Default value: ORPHANS_ONLY. Possible values:
    { ORPHANS_ONLY (Put barcodes only into the records that were not assigned to any
    declared barcode.) INEXACT_MATCH (Put barcodes into records for which an exact
    match with a declared barcode was not found.) ALWAYS (Put barcodes into all the
    records.) }'
  id: BARCODE_POPULATION_STRATEGY
  inputBinding:
    position: 0
    prefix: --BARCODE_POPULATION_STRATEGY
  type: boolean?
- doc: 'The barcodes directory with _barcode.txt files (generated by ExtractIlluminaBarcodes).
    If not set, use BASECALLS_DIR.   Default value: null.'
  id: BARCODES_DIR
  inputBinding:
    position: 0
    prefix: --BARCODES_DIR
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
- doc: 'If set, this is the first tile to be processed (used for debugging).  Note
    that tiles are not processed in numerical order.  Default value: null.  Cannot
    be used in conjuction with argument(s) PROCESS_SINGLE_TILE'
  id: FIRST_TILE
  inputBinding:
    position: 0
    prefix: --FIRST_TILE
  type: int?
- doc: 'For specifying adapters other than standard Illumina  Default value: null.'
  id: FIVE_PRIME_ADAPTER
  inputBinding:
    position: 0
    prefix: --FIVE_PRIME_ADAPTER
  type: string?
- doc: 'value passed is larger than the available memory.  Default value: true. Possible
    values: {true, false}'
  id: FORCE_GC
  inputBinding:
    position: 0
    prefix: --FORCE_GC
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
- doc: 'Whether to ignore reads whose barcodes are not found in LIBRARY_PARAMS.  Useful
    when outputting BAMs for only a subset of the barcodes in a lane.  Default value:
    false. Possible values: {true, false}'
  id: IGNORE_UNEXPECTED_BARCODES
  inputBinding:
    position: 0
    prefix: --IGNORE_UNEXPECTED_BARCODES
  type: boolean?
- doc: 'Should the barcode quality be included when the sample barcode is included?  Default
    value: false. Possible values: {true, false}'
  id: INCLUDE_BARCODE_QUALITY
  inputBinding:
    position: 0
    prefix: --INCLUDE_BARCODE_QUALITY
  type: boolean?
- doc: ':BooleanWhether to include the barcode information in the @RG->BC header tag.
    Defaults to false until included in the SAM spec.  Default value: false. Possible
    values: {true, false}'
  id: INCLUDE_BC_IN_RG_TAG
  inputBinding:
    position: 0
    prefix: --INCLUDE_BC_IN_RG_TAG
  type: boolean?
- doc: 'Whether to include non-PF reads  Default value: true. Possible values: {true,
    false}'
  id: INCLUDE_NON_PF_READS
  inputBinding:
    position: 0
    prefix: --INCLUDE_NON_PF_READS
  type: boolean?
- doc: 'Deprecated (use LIBRARY_PARAMS).  The name of the sequenced library  Default
    value: null. Cannot be used in conjuction with argument(s) BARCODE_PARAMS LIBRARY_PARAMS'
  id: LIBRARY_NAME
  inputBinding:
    position: 0
    prefix: --LIBRARY_NAME
  type: string?
- doc: 'Configure SortingCollections to store this many records before spilling to
    disk. For an indexed run, each SortingCollection gets this value/number of indices.  Default
    value: 1200000.'
  id: MAX_READS_IN_RAM_PER_TILE
  inputBinding:
    position: 0
    prefix: --MAX_READS_IN_RAM_PER_TILE
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
- doc: "The minimum quality (after transforming 0s to 1s) expected from reads.  If\
    \ qualities are lower than this value, an error is thrown.The default of 2 is\
    \ what the Illumina's spec describes as the minimum, but in practice the value\
    \ has been observed lower.  Default value: 2."
  id: MINIMUM_QUALITY
  inputBinding:
    position: 0
    prefix: --MINIMUM_QUALITY
  type: int?
- doc: 'The tag to use to store any molecular index base qualities.  If more than
    one molecular index is found, their qualities will be concatenated and stored
    here (.i.e. the number of "M" operators in the READ_STRUCTURE)  Default value:
    QX.'
  id: MOLECULAR_INDEX_BASE_QUALITY_TAG
  inputBinding:
    position: 0
    prefix: --MOLECULAR_INDEX_BASE_QUALITY_TAG
  type: string?
- doc: 'The tag to use to store any molecular indexes.  If more than one molecular
    index is found, they will be concatenated and stored here.  Default value: RX.'
  id: MOLECULAR_INDEX_TAG
  inputBinding:
    position: 0
    prefix: --MOLECULAR_INDEX_TAG
  type: string?
- doc: 'The number of threads to run in parallel. If NUM_PROCESSORS = 0, number of
    cores is automatically set to the number of cores available on the machine. If
    NUM_PROCESSORS < 0, then the number of cores used will be the number available
    on the machine less NUM_PROCESSORS.  Default value: 0.'
  id: NUM_PROCESSORS
  inputBinding:
    position: 0
    prefix: --NUM_PROCESSORS
  type: int?
- doc: 'The name of the sequencing technology that produced the read.  Default value:
    illumina.'
  id: PLATFORM
  inputBinding:
    position: 0
    prefix: --PLATFORM
  type: string?
- doc: 'If set, process only the tile number given and append the tile number to the
    output file name.  Default value: null.  Cannot be used in conjuction with argument(s)
    FIRST_TILE'
  id: PROCESS_SINGLE_TILE
  inputBinding:
    position: 0
    prefix: --PROCESS_SINGLE_TILE
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'ID used to link RG header record with RG tag in SAM record.  If these are
    unique in SAM files that get merged, merge performance is better.  If not specified,
    READ_GROUP_ID will be set to <first 5 chars of RUN_BARCODE>.<LANE> .  Default
    value: null.'
  id: READ_GROUP_ID
  inputBinding:
    position: 0
    prefix: --READ_GROUP_ID
  type: string?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: ':Date         The start date of the run.  Default value: null.'
  id: RUN_START_DATE
  inputBinding:
    position: 0
    prefix: --RUN_START_DATE
  type: boolean?
- doc: 'The list of tags to store each molecular index.  The number of tags should
    match the number of molecular indexes.  This argument may be specified 0 or more
    times. Default value: null.'
  id: TAG_PER_MOLECULAR_INDEX
  inputBinding:
    position: 0
    prefix: --TAG_PER_MOLECULAR_INDEX
  type: string?
- doc: 'For specifying adapters other than standard Illumina  Default value: null.'
  id: THREE_PRIME_ADAPTER
  inputBinding:
    position: 0
    prefix: --THREE_PRIME_ADAPTER
  type: string?
- doc: 'If set, process no more than this many tiles (used for debugging).  Default
    value: null.'
  id: TILE_LIMIT
  inputBinding:
    position: 0
    prefix: --TILE_LIMIT
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
