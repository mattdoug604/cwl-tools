#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- ValidateSamFile
class: CommandLineTool
cwlVersion: v1.0
id: gatk_ValidateSamFile
inputs:
- doc: picard.jar ValidateSamFile \<br />      I=input.bam \<br />      MODE=SUMMARY</pre><p>To
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Input SAM/BAM file  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
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
- doc: ':Type                 List of validation error types to ignore.  This argument
    may be specified 0 or more times. Default value: null. Possible values: {INVALID_QUALITY_FORMAT,
    INVALID_FLAG_PROPER_PAIR, INVALID_FLAG_MATE_UNMAPPED, MISMATCH_FLAG_MATE_UNMAPPED,
    INVALID_FLAG_MATE_NEG_STRAND, MISMATCH_FLAG_MATE_NEG_STRAND, INVALID_FLAG_FIRST_OF_PAIR,
    INVALID_FLAG_SECOND_OF_PAIR, PAIRED_READ_NOT_MARKED_AS_FIRST_OR_SECOND, INVALID_FLAG_NOT_PRIM_ALIGNMENT,
    INVALID_FLAG_SUPPLEMENTARY_ALIGNMENT, INVALID_FLAG_READ_UNMAPPED, INVALID_INSERT_SIZE,
    INVALID_MAPPING_QUALITY, INVALID_CIGAR, ADJACENT_INDEL_IN_CIGAR, INVALID_MATE_REF_INDEX,
    MISMATCH_MATE_REF_INDEX, INVALID_REFERENCE_INDEX, INVALID_ALIGNMENT_START, MISMATCH_MATE_ALIGNMENT_START,
    MATE_FIELD_MISMATCH, INVALID_TAG_NM, MISSING_TAG_NM, MISSING_HEADER, MISSING_SEQUENCE_DICTIONARY,
    MISSING_READ_GROUP, RECORD_OUT_OF_ORDER, READ_GROUP_NOT_FOUND, RECORD_MISSING_READ_GROUP,
    INVALID_INDEXING_BIN, MISSING_VERSION_NUMBER, INVALID_VERSION_NUMBER, TRUNCATED_FILE,
    MISMATCH_READ_LENGTH_AND_QUALS_LENGTH, EMPTY_READ, CIGAR_MAPS_OFF_REFERENCE, MISMATCH_READ_LENGTH_AND_E2_LENGTH,
    MISMATCH_READ_LENGTH_AND_U2_LENGTH, E2_BASE_EQUALS_PRIMARY_BASE, BAM_FILE_MISSING_TERMINATOR_BLOCK,
    UNRECOGNIZED_HEADER_TYPE, POORLY_FORMATTED_HEADER_TAG, HEADER_TAG_MULTIPLY_DEFINED,
    HEADER_RECORD_MISSING_REQUIRED_TAG, HEADER_TAG_NON_CONFORMING_VALUE, INVALID_DATE_STRING,
    TAG_VALUE_TOO_LARGE, INVALID_INDEX_FILE_POINTER, INVALID_PREDICTED_MEDIAN_INSERT_SIZE,
    DUPLICATE_READ_GROUP_ID, MISSING_PLATFORM_VALUE, INVALID_PLATFORM_VALUE, DUPLICATE_PROGRAM_GROUP_ID,
    MATE_NOT_FOUND, MATES_ARE_SAME_END, MISMATCH_MATE_CIGAR_STRING, MATE_CIGAR_STRING_INVALID_PRESENCE,
    INVALID_UNPAIRED_MATE_REFERENCE, INVALID_UNALIGNED_MATE_START, MISMATCH_CIGAR_SEQ_LENGTH,
    MISMATCH_SEQ_QUAL_LENGTH, MISMATCH_FILE_SEQ_DICT, QUALITY_NOT_STORED, DUPLICATE_SAM_TAG,
    CG_TAG_FOUND_IN_ATTRIBUTES}'
  id: IGNORE
  inputBinding:
    position: 0
    prefix: --IGNORE
  type: string
- doc: 'If true, only report errors and ignore warnings.  Default value: false. Possible
    values: {true, false}'
  id: IGNORE_WARNINGS
  inputBinding:
    position: 0
    prefix: --IGNORE_WARNINGS
  type: boolean?
- doc: ':IndexValidationStringency If set to anything other than IndexValidationStringency.NONE
    and input is a BAM file with an index file, also validates the index at the specified
    stringency. Until VALIDATE_INDEX is retired, VALIDATE INDEX and INDEX_VALIDATION_STRINGENCY
    must agree on whether to validate the index.  Default value: EXHAUSTIVE. Possible
    values: {EXHAUSTIVE, LESS_EXHAUSTIVE, NONE}'
  id: INDEX_VALIDATION_STRINGENCY
  inputBinding:
    position: 0
    prefix: --INDEX_VALIDATION_STRINGENCY
  type: string?
- doc: 'Whether the SAM or BAM file consists of bisulfite sequenced reads. If so,
    C->T is not counted as an error in computing the value of the NM tag.  Default
    value: false. Possible values: {true, false}'
  id: IS_BISULFITE_SEQUENCED
  inputBinding:
    position: 0
    prefix: --IS_BISULFITE_SEQUENCED
  type: boolean?
- doc: Relevant for a coordinate-sorted file containing read pairs only. Maximum number
    of file handles to keep open when spilling mate info to disk. Set this number
    a little lower than the per-process maximum number of file that may be open. This
    number can be found by
  id: MAX_OPEN_TEMP_FILES
  inputBinding:
    position: 0
    prefix: --MAX_OPEN_TEMP_FILES
  type: int?
- doc: "' command on a Unix system.  Default value: 8000."
  id: n
  inputBinding:
    position: 0
    prefix: -n
  type: boolean?
- doc: 'The maximum number of lines output in verbose mode  Default value: 100.'
  id: MAX_OUTPUT
  inputBinding:
    position: 0
    prefix: --MAX_OUTPUT
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
- doc: ':Mode                Mode of output  Default value: VERBOSE. Possible values:
    {VERBOSE, SUMMARY}'
  id: MODE
  inputBinding:
    position: 0
    prefix: --MODE
  type: string?
- doc: 'Output file or standard out if missing  Default value: null.'
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
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
- doc: 'If true, this tool will not attempt to validate mate information. In general
    cases, this option should not be used.  However, in cases where samples have very
    high duplication or chimerism rates (> 10%), the mate validation process often
    requires extremely large amounts of memory to run, so this flag allows you to
    forego that check.  Default value: false. Possible values: {true, false}'
  id: SKIP_MATE_VALIDATION
  inputBinding:
    position: 0
    prefix: --SKIP_MATE_VALIDATION
  type: boolean?
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
- doc: 'DEPRECATED.  Use INDEX_VALIDATION_STRINGENCY instead.  If true and input is
    a BAM file with an index file, also validates the index.  Until this parameter
    is retired VALIDATE INDEX and INDEX_VALIDATION_STRINGENCY must agree on whether
    to validate the index. Default value: true. Possible values: {true, false}'
  id: VALIDATE_INDEX
  inputBinding:
    position: 0
    prefix: --VALIDATE_INDEX
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
