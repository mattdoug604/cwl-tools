#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- BedToIntervalList
class: CommandLineTool
cwlVersion: v1.0
id: gatk_BedToIntervalList
inputs:
- doc: name (SN) - The name of the sequence in the file for identification purposes,
    can be
  id: Sequence
  inputBinding:
    position: 0
    prefix: -Sequence
  type: boolean?
- doc: ''
  id: Start
  inputBinding:
    position: 0
    prefix: -Start
  type: boolean
- doc: '- Indicates +/- strand for the interval'
  id: Strand
  inputBinding:
    position: 0
    prefix: -Strand
  type: boolean?
- doc: name - (Each interval should have a unique name) </pre><br/>This tool requires
    a
  id: Interval
  inputBinding:
    position: 0
    prefix: -Interval
  type: boolean?
- doc: picard.jar BedToIntervalList \<br />      I=input.bed \<br />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: The input BED file  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: The output Picard Interval List  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: :FileThe sequence dictionary, or BAM/VCF/IntervalList from which a dictionary
    can be extracted. Required.
  id: SEQUENCE_DICTIONARY
  inputBinding:
    position: 0
    prefix: --SEQUENCE_DICTIONARY
  type: boolean
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
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: 'If true, sort the output interval list before writing it.  Default value:
    true. Possible values: {true, false}'
  id: SORT
  inputBinding:
    position: 0
    prefix: --SORT
  type: boolean?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
- doc: 'If true, unique the output interval list by merging overlapping regions, before
    writing it (implies sort=true).  Default value: false. Possible values: {true,
    false}'
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
