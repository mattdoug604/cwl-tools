#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- EstimateLibraryComplexity
class: CommandLineTool
cwlVersion: v1.0
id: gatk_EstimateLibraryComplexity
inputs:
- doc: picard.jar EstimateLibraryComplexity \<br />     I=input.bam \<br />     O=est_lib_complex_metrics.txt</pre>Please
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: One or more files to combine and estimate library complexity from. Reads can
    be mapped or unmapped.  This argument must be specified at least once. Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: Output file to writes per-library metrics to.  Required.
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
- doc: 'Barcode SAM tag (ex. BC for 10X Genomics)  Default value: null.'
  id: BARCODE_TAG
  inputBinding:
    position: 0
    prefix: --BARCODE_TAG
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
- doc: 'The maximum rate of differences between two reads to call them identical.  Default
    value: 0.03.'
  id: MAX_DIFF_RATE
  inputBinding:
    position: 0
    prefix: --MAX_DIFF_RATE
  type: double?
- doc: 'Do not process self-similar groups that are this many times over the mean
    expected group size. I.e. if the input contains 10m read pairs and MIN_IDENTICAL_BASES
    is set to 5, then the mean expected group size would be approximately 10 reads.  Default
    value: 500.'
  id: MAX_GROUP_RATIO
  inputBinding:
    position: 0
    prefix: --MAX_GROUP_RATIO
  type: int?
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
- doc: 'The maximum number of bases to consider when comparing reads (0 means no maximum).
    Default value: 0.'
  id: MAX_READ_LENGTH
  inputBinding:
    position: 0
    prefix: --MAX_READ_LENGTH
  type: int?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 3900435.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: 'Minimum number group count.  On a per-library basis, we count the number of
    groups of duplicates that have a particular size.  Omit from consideration any
    count that is less than this value.  For example, if we see only one group of
    duplicates with size 500, we omit it from the metric calculations if MIN_GROUP_COUNT
    is set to two.  Setting this to two may help remove technical artifacts from the
    library size calculation, for example, adapter dimers.  Default value: 2.'
  id: MIN_GROUP_COUNT
  inputBinding:
    position: 0
    prefix: --MIN_GROUP_COUNT
  type: int?
- doc: 'The minimum number of bases at the starts of reads that must be identical
    for reads to be grouped together for duplicate detection.  In effect total_reads
    / 4^max_id_bases reads will be compared at a time, so lower numbers will produce
    more accurate results but consume exponentially more memory and CPU.  Default
    value: 5.'
  id: MIN_IDENTICAL_BASES
  inputBinding:
    position: 0
    prefix: --MIN_IDENTICAL_BASES
  type: int?
- doc: 'The minimum mean quality of the bases in a read pair for the read to be analyzed.
    Reads with lower average quality are filtered out and not considered in any calculations.
    Default value: 20.'
  id: MIN_MEAN_QUALITY
  inputBinding:
    position: 0
    prefix: --MIN_MEAN_QUALITY
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
