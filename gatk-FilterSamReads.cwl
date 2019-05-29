#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- FilterSamReads
class: CommandLineTool
cwlVersion: v1.0
id: gatk_FilterSamReads
inputs:
- doc: picard.jar FilterSamReads \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: ':Filter               Which filter to use.  Required. Possible values: { includeAligned
    (Output aligned reads only. INPUT SAM/BAM must be in queryname SortOrder. (Note:
    first and second of paired reads must both be aligned to be included in OUTPUT.))
    excludeAligned (Output Unmapped reads only. INPUT SAM/BAM must be in queryname
    SortOrder. (Note: first and second of pair must both be aligned to be excluded
    from OUTPUT.)) includeReadList (Output reads with names contained in READ_LIST_FILE.
    See READ_LIST_FILE for more detail.) excludeReadList (Output reads with names
    *not* contained in READ_LIST_FILE. See READ_LIST_FILE for more detail.) includeJavascript
    (Output reads that have been accepted by the JAVASCRIPT_FILE script, that is,
    reads for which the value of the script is true. See the JAVASCRIPT_FILE argument
    for more detail. ) includePairedIntervals (Output reads that overlap with an interval
    from INTERVAL_LIST (and their mate). INPUT must be coordinate sorted.) includeTagValues
    (OUTPUT SAM/BAM will contain reads that have a value of tag TAG that is contained
    in the values for TAG_VALUES) excludeTagValues (OUTPUT SAM/BAM will contain reads
    that do not have a value of tag TAG that is contained in the values for TAG_VALUES)
    }'
  id: FILTER
  inputBinding:
    position: 0
    prefix: --FILTER
  type: string
- doc: The SAM or BAM file that will be filtered.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: SAM or BAM file for resulting reads.  Required.
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
- doc: 'Interval List File containing intervals that will be included in the OUTPUT
    when using FILTER=includePairedIntervals  Default value: null.'
  id: INTERVAL_LIST
  inputBinding:
    position: 0
    prefix: --INTERVAL_LIST
  type: File?
- doc: "Filters the INPUT with a javascript expression using the java javascript-engine,\
    \ when using FILTER=includeJavascript.  The script puts the following variables\
    \ in the script context: ' a SamRecord ( https://samtools.github.io/htsjdk/javadoc/htsjdk/htsjdk/samtools/SAMRecord.html\
    \ ) and 'header' a SAMFileHeader ( https://samtools.github.io/htsjdk/javadoc/htsjdk/htsjdk/samtools/SAMFileHeader.html\
    \ ). all the public members of SamRecord and SAMFileHeader are accessible. A record\
    \ is accepted if the last value of the script evaluates to true.  Default value:\
    \ null."
  id: JAVASCRIPT_FILE
  inputBinding:
    position: 0
    prefix: --JAVASCRIPT_FILE
  type: record?
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
- doc: 'containing reads that will be included in or excluded from the OUTPUT SAM
    or BAM , when using FILTER=includeReadList or FILTER=includeReadList.  Default
    value: null.'
  id: READ_LIST_FILE
  inputBinding:
    position: 0
    prefix: --READ_LIST_FILE
  type: File?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: ':SortOrder    SortOrder of the OUTPUT file, otherwise use the SortOrder of
    the INPUT file.  Default value: null. Possible values: {unsorted, queryname, coordinate,
    duplicate, unknown}'
  id: SORT_ORDER
  inputBinding:
    position: 0
    prefix: --SORT_ORDER
  type: string?
- doc: 'The tag to select from input SAM/BAM  Default value: null.'
  id: TAG
  inputBinding:
    position: 0
    prefix: --TAG
  type: string?
- doc: 'The tag value(s) to filter by  This argument may be specified 0 or more times.
    Default value: null.'
  id: TAG_VALUE
  inputBinding:
    position: 0
    prefix: --TAG_VALUE
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
- doc: 'Create <OUTPUT>.reads file containing names of reads from INPUT and OUTPUT
    (for debugging purposes.)  Default value: false. Possible values: {true, false}'
  id: WRITE_READS_FILES
  inputBinding:
    position: 0
    prefix: --WRITE_READS_FILES
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
