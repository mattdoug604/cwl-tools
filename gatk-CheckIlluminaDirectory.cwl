#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CheckIlluminaDirectory
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CheckIlluminaDirectory
inputs:
- doc: picard.jar CheckIlluminaDirectory \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: Directory?
- doc: The basecalls output directory.   Required.
  id: BASECALLS_DIR
  inputBinding:
    position: 0
    prefix: --BASECALLS_DIR
  type: File
- doc: The number of the lane(s) to check.   This argument must be specified at least
    once. Required.
  id: LANES
  inputBinding:
    position: 0
    prefix: --LANES
  type: int
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
    an output SAM/BAM file or in read groups therein. Note:  If you want to check
    whether or not a future IlluminaBasecallsToSam or ExtractIlluminaBarcodes run
    will fail then be sure to use the exact same READ_STRUCTURE that you would pass
    to these programs for this run.  Required.'
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
- doc: ':IlluminaDataType The data types that should be checked for each tile/cycle.  If
    no values are provided then the data types checked are those required by IlluminaBaseCallsToSam
    (which is a superset of those used in ExtractIlluminaBarcodes).  These data types
    vary slightly depending on whether or not the run is barcoded so READ_STRUCTURE
    should be the same as that which will be passed to IlluminaBasecallsToSam.  If
    this option is left unspecified then both ExtractIlluminaBarcodes and IlluminaBaseCallsToSam
    should complete successfully UNLESS the individual records of the files themselves
    are spurious.  This argument may be specified 0 or more times. Default value:
    null. Possible values: {Position, BaseCalls, QualityScores, PF, Barcodes}'
  id: DATA_TYPES
  inputBinding:
    position: 0
    prefix: --DATA_TYPES
  type: string
- doc: 'A flag to determine whether or not to create fake versions of the missing
    files.  Default value: false. Possible values: {true, false}'
  id: FAKE_FILES
  inputBinding:
    position: 0
    prefix: --FAKE_FILES
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
- doc: 'A flag to create symlinks to the loc file for the X Ten for each tile. @deprecated
    It is no longer necessary to create locs file symlinks.  Default value: false.
    Possible values: {true, false}'
  id: LINK_LOCS
  inputBinding:
    position: 0
    prefix: --LINK_LOCS
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
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: 'The number(s) of the tile(s) to check.   This argument may be specified 0
    or more times. Default value: null.'
  id: TILE_NUMBERS
  inputBinding:
    position: 0
    prefix: --TILE_NUMBERS
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
