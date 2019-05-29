#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- IntervalListTools
class: CommandLineTool
cwlVersion: v1.0
id: gatk_IntervalListTools
inputs:
- doc: picard.jar
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: One or more interval lists. If multiple interval lists are provided the output
    is theresult of merging the inputs. Supported formats are interval_list and VCF.  This
    argument must be specified at least once. Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: ':Action               Action to take on inputs.  Default value: CONCAT. Possible
    values: { CONCAT (The concatenation of all the intervals in all the INPUTs, no
    sorting or merging of overlapping/abutting intervals implied. Will result in a
    possibly unsorted list unless requested otherwise.) UNION (Like CONCATENATE but
    with UNIQUE and SORT implied, the result being the set-wise union of all INPUTS,
    with overlapping and abutting intervals merged into one.) INTERSECT (The sorted
    and merged set of all loci that are contained in all of the INPUTs.) SUBTRACT
    (Subtracts the intervals in SECOND_INPUT from those in INPUT. The resulting loci
    are those in INPUT that are not in SECOND_INPUT.) SYMDIFF (Results in loci that
    are in INPUT or SECOND_INPUT but are not in both.) OVERLAPS (Outputs the entire
    intervals from INPUT that have bases which overlap any interval from SECOND_INPUT.
    Note that this is different than INTERSECT in that each original interval is either
    emitted in its entirety, or not at all.) }'
  id: ACTION
  inputBinding:
    position: 0
    prefix: --ACTION
  type: string?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'If set to a positive value will create a new interval list with the original
    intervals broken up at integer multiples of this value. Set to 0 to NOT break
    up intervals.  Default value: 0.'
  id: BREAK_BANDS_AT_MULTIPLES_OF
  inputBinding:
    position: 0
    prefix: --BREAK_BANDS_AT_MULTIPLES_OF
  type: int?
- doc: 'One or more lines of comment to add to the header of the output file (as @CO
    lines in the SAM header).  This argument may be specified 0 or more times. Default
    value: null.'
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
- doc: 'Whether to include filtered variants in the vcf when generating an interval
    list from vcf. Default value: false. Possible values: {true, false}'
  id: INCLUDE_FILTERED
  inputBinding:
    position: 0
    prefix: --INCLUDE_FILTERED
  type: boolean?
- doc: 'Produce the inverse list of intervals, that is, the regions in the genome
    that are <br>not</br> covered by any of the input intervals. Will merge abutting
    intervals first. Output will be sorted.  Default value: false. Possible values:
    {true, false}'
  id: INVERT
  inputBinding:
    position: 0
    prefix: --INVERT
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
- doc: 'The output interval list file to write (if SCATTER_COUNT == 1) or the directory
    into which to write the scattered interval sub-directories (if SCATTER_COUNT >
    1).  Default value: .'
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: null?
- doc: 'The amount to pad each end of the intervals by before other operations are
    undertaken. Negative numbers are allowed and indicate intervals should be shrunk.
    Resulting intervals < 0 bases long will be removed. Padding is applied to the
    interval lists (both INPUT and SECOND_INPUT, if provided) <b> before </b> the
    ACTION is performed.  Default value: 0.'
  id: PADDING
  inputBinding:
    position: 0
    prefix: --PADDING
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
- doc: 'The number of files into which to scatter the resulting list by locus; in
    some situations, fewer intervals may be emitted.  Note - if > 1, the resultant
    scattered intervals will be sorted and uniqued.  The sort will be inverted if
    the INVERT flag is set.  Default value: 1.'
  id: SCATTER_COUNT
  inputBinding:
    position: 0
    prefix: --SCATTER_COUNT
  type: int?
- doc: 'Second set of intervals for SUBTRACT and DIFFERENCE operations.  This argument
    may be specified 0 or more times. Default value: null.'
  id: SECOND_INPUT
  inputBinding:
    position: 0
    prefix: --SECOND_INPUT
  type: File?
- doc: 'If true, sort the resulting interval list by coordinate.  Default value: true.
    Possible values: {true, false}'
  id: SORT
  inputBinding:
    position: 0
    prefix: --SORT
  type: boolean?
- doc: ':Mode    Selects between various ways in which scattering of the interval-list
    can happen.  Default value: INTERVAL_SUBDIVISION. Possible values: {INTERVAL_SUBDIVISION,
    BALANCING_WITHOUT_INTERVAL_SUBDIVISION, BALANCING_WITHOUT_INTERVAL_SUBDIVISION_WITH_OVERFLOW}'
  id: SUBDIVISION_MODE
  inputBinding:
    position: 0
    prefix: --SUBDIVISION_MODE
  type: string?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
- doc: 'If true, merge overlapping and adjacent intervals to create a list of unique
    intervals. Implies SORT=true.  Default value: false. Possible values: {true, false}'
  id: UNIQUE
  inputBinding:
    position: 0
    prefix: --UNIQUE
  type: boolean?
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
