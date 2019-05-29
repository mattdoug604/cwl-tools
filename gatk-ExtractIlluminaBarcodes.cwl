#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- ExtractIlluminaBarcodes
class: CommandLineTool
cwlVersion: v1.0
id: gatk_ExtractIlluminaBarcodes
inputs:
- doc: picard.jar ExtractIlluminaBarcodes \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Barcode sequence.  These must be unique, and all the same length.  This cannot
    be used with reads that have more than one barcode; use BARCODE_FILE in that case.   This
    argument must be specified at least once. Required.  Cannot be used in conjuction
    with argument(s) BARCODE_FILE
  id: BARCODE
  inputBinding:
    position: 0
    prefix: --BARCODE
  type: string
- doc: Tab-delimited file of barcode sequences, barcode name and, optionally, library
    name. Barcodes must be unique and all the same length.  Column headers must be
    'barcode_sequence' (or 'barcode_sequence_1'), 'barcode_sequence_2' (optional),
    'barcode_name', and 'library_name'.  Required.  Cannot be used in conjuction with
    argument(s) BARCODE
  id: BARCODE_FILE
  inputBinding:
    position: 0
    prefix: --BARCODE_FILE
  type: File
- doc: The Illumina basecalls directory.   Required.
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
- doc: Per-barcode and per-lane metrics written to this file.  Required.
  id: METRICS_FILE
  inputBinding:
    position: 0
    prefix: --METRICS_FILE
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
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Compress output s_l_t_barcode.txt files using gzip and append a .gz extension
    to the file names.  Default value: false. Possible values: {true, false}'
  id: COMPRESS_OUTPUTS
  inputBinding:
    position: 0
    prefix: --COMPRESS_OUTPUTS
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
- doc: 'Maximum mismatches for a barcode to be considered a match.  Default value:
    1.'
  id: MAX_MISMATCHES
  inputBinding:
    position: 0
    prefix: --MAX_MISMATCHES
  type: int?
- doc: 'Maximum allowable number of no-calls in a barcode read before it is considered
    unmatchable.  Default value: 2.'
  id: MAX_NO_CALLS
  inputBinding:
    position: 0
    prefix: --MAX_NO_CALLS
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
- doc: 'Minimum difference between number of mismatches in the best and second best
    barcodes for a barcode to be considered a match.  Default value: 1.'
  id: MIN_MISMATCH_DELTA
  inputBinding:
    position: 0
    prefix: --MIN_MISMATCH_DELTA
  type: int?
- doc: 'Minimum base quality. Any barcode bases falling below this quality will be
    considered a mismatch even in the bases match.  Default value: 0.'
  id: MINIMUM_BASE_QUALITY
  inputBinding:
    position: 0
    prefix: --MINIMUM_BASE_QUALITY
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
- doc: 'Run this many PerTileBarcodeExtractors in parallel.  If NUM_PROCESSORS = 0,
    number of cores is automatically set to the number of cores available on the machine.
    If NUM_PROCESSORS < 0 then the number of cores used will be the number available
    on the machine less NUM_PROCESSORS.  Default value: 1.'
  id: NUM_PROCESSORS
  inputBinding:
    position: 0
    prefix: --NUM_PROCESSORS
  type: int?
- doc: 'Where to write _barcode.txt files.  By default, these are written to BASECALLS_DIR.
    Default value: null.'
  id: OUTPUT_DIR
  inputBinding:
    position: 0
    prefix: --OUTPUT_DIR
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
