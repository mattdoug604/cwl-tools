#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CreateSequenceDictionary
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CreateSequenceDictionary
inputs:
- doc: ''
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean
- doc: Input reference fasta or fasta.gz  Required.
  id: REFERENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE
  type: File
- doc: "Optional file containing the alternative names for the contigs. Tools may\
    \ use this information to consider different contig notations as identical (e.g:\
    \ 'chr1' and '1'). The alternative names will be put into the appropriate @AN\
    \ annotation for each contig. No header. First column is the original name, the\
    \ second column is an alternative name. One contig may have more than one alternative\
    \ name.  Default value: null."
  id: ALT_NAMES
  inputBinding:
    position: 0
    prefix: --ALT_NAMES
  type: File?
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
- doc: 'Put into AS field of sequence dictionary entry if supplied  Default value:
    null.'
  id: GENOME_ASSEMBLY
  inputBinding:
    position: 0
    prefix: --GENOME_ASSEMBLY
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
- doc: 'Stop after writing this many sequences.  For testing.  Default value: 2147483647.'
  id: NUM_SEQUENCES
  inputBinding:
    position: 0
    prefix: --NUM_SEQUENCES
  type: int?
- doc: 'Output SAM file containing only the sequence dictionary. By default it will
    use the base name of the input reference with the .dict extension  Default value:
    null.'
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
- doc: 'Put into SP field of sequence dictionary entry  Default value: null.'
  id: SPECIES
  inputBinding:
    position: 0
    prefix: --SPECIES
  type: string?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
- doc: 'Make sequence name the first word from the > line in the fasta file.  By default
    the entire contents of the > line is used, excluding leading and trailing whitespace.  Default
    value: true. Possible values: {true, false}'
  id: TRUNCATE_NAMES_AT_WHITESPACE
  inputBinding:
    position: 0
    prefix: --TRUNCATE_NAMES_AT_WHITESPACE
  type: boolean?
- doc: 'Put into UR field of sequence dictionary entry.  If not supplied, input reference
    file is used  Default value: null.'
  id: URI
  inputBinding:
    position: 0
    prefix: --URI
  type: string?
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
