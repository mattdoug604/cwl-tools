#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- RevertSam
class: CommandLineTool
cwlVersion: v1.0
id: gatk_RevertSam
inputs:
- doc: picard.jar RevertSam \
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: The input SAM/BAM file to revert the state of.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: The output SAM/BAM file to create, or an output directory if OUTPUT_BY_READGROUP
    is true. Required.  Cannot be used in conjuction with argument(s) OUTPUT_MAP (OM)
    OUTPUT_MAP (OM)
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: Tab separated file with two columns, READ_GROUP_ID and OUTPUT, providing file
    mapping only used if OUTPUT_BY_READGROUP is true.  Required.  Cannot be used in
    conjuction with argument(s) OUTPUT (O)
  id: OUTPUT_MAP
  inputBinding:
    position: 0
    prefix: --OUTPUT_MAP
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'When removing alignment information, the set of optional tags to remove.  This
    argument may be specified 0 or more times. Default value: [NM, UQ, PG, MD, MQ,
    SA, MC, AS].'
  id: ATTRIBUTE_TO_CLEAR
  inputBinding:
    position: 0
    prefix: --ATTRIBUTE_TO_CLEAR
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
- doc: ':BooleanIf SANITIZE=true keep the first record when we find more than one
    record with the same name for R1/R2/unpaired reads respectively. For paired end
    reads, keeps only the first R1 and R2 found respectively, and discards all unpaired
    reads. Duplicates do not refer to the duplicate flag in the FLAG field, but instead
    reads with the same name.  Default value: false. Possible values: {true, false}'
  id: KEEP_FIRST_DUPLICATE
  inputBinding:
    position: 0
    prefix: --KEEP_FIRST_DUPLICATE
  type: boolean?
- doc: 'The library name to use in the reverted output file.  This will override the
    existing sample alias in the file and is used only if all the read groups in the
    input file have the same library name.  Default value: null.'
  id: LIBRARY_NAME
  inputBinding:
    position: 0
    prefix: --LIBRARY_NAME
  type: string?
- doc: 'If SANITIZE=true and higher than MAX_DISCARD_FRACTION reads are discarded
    due to sanitization thenthe program will exit with an Exception instead of exiting
    cleanly. Output BAM will still be valid.  Default value: 0.01.'
  id: MAX_DISCARD_FRACTION
  inputBinding:
    position: 0
    prefix: --MAX_DISCARD_FRACTION
  type: double?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: 'When true, outputs each read group in a separate file.  Default value: false.
    Possible values: {true, false}'
  id: OUTPUT_BY_READGROUP
  inputBinding:
    position: 0
    prefix: --OUTPUT_BY_READGROUP
  type: boolean?
- doc: ':FileType When using OUTPUT_BY_READGROUP, the output file format can be set
    to a certain format. Default value: dynamic. Possible values: { sam (Generate
    SAM files.) bam (Generate BAM files.) cram (Generate CRAM files.) dynamic (Generate
    files based on the extention of INPUT.) }'
  id: OUTPUT_BY_READGROUP_FILE_FORMAT
  inputBinding:
    position: 0
    prefix: --OUTPUT_BY_READGROUP_FILE_FORMAT
  type: boolean?
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
- doc: 'Remove all alignment information from the file.  Default value: true. Possible
    values: {true, false}'
  id: REMOVE_ALIGNMENT_INFORMATION
  inputBinding:
    position: 0
    prefix: --REMOVE_ALIGNMENT_INFORMATION
  type: boolean?
- doc: 'Remove duplicate read flags from all reads.  Note that if this is true and
    REMOVE_ALIGNMENT_INFORMATION==false,  the output may have the unusual but sometimes
    desirable trait of having unmapped reads that are marked as duplicates.  Default
    value: true. Possible values: {true, false}'
  id: REMOVE_DUPLICATE_INFORMATION
  inputBinding:
    position: 0
    prefix: --REMOVE_DUPLICATE_INFORMATION
  type: boolean?
- doc: 'True to restore original qualities from the OQ field to the QUAL field if
    available. Default value: true. Possible values: {true, false}'
  id: RESTORE_ORIGINAL_QUALITIES
  inputBinding:
    position: 0
    prefix: --RESTORE_ORIGINAL_QUALITIES
  type: boolean?
- doc: 'The sample alias to use in the reverted output file.  This will override the
    existing sample alias in the file and is used only if all the read groups in the
    input file have the same sample alias.  Default value: null.'
  id: SAMPLE_ALIAS
  inputBinding:
    position: 0
    prefix: --SAMPLE_ALIAS
  type: string?
- doc: 'WARNING: This option is potentially destructive. If enabled will discard reads
    in order to produce a consistent output BAM. Reads discarded include (but are
    not limited to) paired reads with missing mates, duplicated records, records with
    mismatches in length of bases and qualities. This option can only be enabled if
    the output sort order is queryname and will always cause sorting to occur.  Default
    value: false. Possible values: {true, false}'
  id: SANITIZE
  inputBinding:
    position: 0
    prefix: --SANITIZE
  type: boolean?
- doc: ':SortOrder    The sort order to create the reverted output file with.  Default
    value: queryname. Possible values: {unsorted, queryname, coordinate, duplicate,
    unknown}'
  id: SORT_ORDER
  inputBinding:
    position: 0
    prefix: --SORT_ORDER
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
