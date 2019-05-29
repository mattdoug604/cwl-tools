#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- FastqToSam
class: CommandLineTool
cwlVersion: v1.0
id: gatk_FastqToSam
inputs:
- doc: picard.jar FastqToSam \
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Input fastq file (optionally gzipped) for single end data, or first read in
    paired end data.  Required.
  id: FASTQ
  inputBinding:
    position: 0
    prefix: --FASTQ
  type: File
- doc: Output SAM/BAM file.   Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: Sample name to insert into the read group header  Required.
  id: SAMPLE_NAME
  inputBinding:
    position: 0
    prefix: --SAMPLE_NAME
  type: string
- doc: 'Allow (and ignore) empty lines  Default value: false. Possible values: {true,
    false}'
  id: ALLOW_AND_IGNORE_EMPTY_LINES
  inputBinding:
    position: 0
    prefix: --ALLOW_AND_IGNORE_EMPTY_LINES
  type: boolean?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: "Comment(s) to include in the merged output file's header.  This argument may\
    \ be specified 0 or more times. Default value: null."
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
- doc: 'Inserted into the read group header  Default value: null.'
  id: DESCRIPTION
  inputBinding:
    position: 0
    prefix: --DESCRIPTION
  type: string?
- doc: 'Input fastq file (optionally gzipped) for the second read of paired end data.  Default
    value: null.'
  id: FASTQ2
  inputBinding:
    position: 0
    prefix: --FASTQ2
  type: File?
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
- doc: 'The library name to place into the LB attribute in the read group header  Default
    value: .'
  id: LIBRARY_NAME
  inputBinding:
    position: 0
    prefix: --LIBRARY_NAME
  type: null?
- doc: 'Maximum quality allowed in the input fastq.  An exception will be thrown if
    a quality is greater than this value.  Default value: 93.'
  id: MAX_Q
  inputBinding:
    position: 0
    prefix: --MAX_Q
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
- doc: 'Minimum quality allowed in the input fastq.  An exception will be thrown if
    a quality is less than this value.  Default value: 0.'
  id: MIN_Q
  inputBinding:
    position: 0
    prefix: --MIN_Q
  type: int?
- doc: 'The platform type (e.g. illumina, solid) to insert into the read group header  Default
    value: null.'
  id: PLATFORM
  inputBinding:
    position: 0
    prefix: --PLATFORM
  type: string?
- doc: 'Platform model to insert into the group header (free-form text providing further
    details of the platform/technology used)  Default value: null.'
  id: PLATFORM_MODEL
  inputBinding:
    position: 0
    prefix: --PLATFORM_MODEL
  type: string?
- doc: 'The platform unit (often run_barcode.lane) to insert into the read group header  Default
    value: null.'
  id: PLATFORM_UNIT
  inputBinding:
    position: 0
    prefix: --PLATFORM_UNIT
  type: string?
- doc: 'Predicted median insert size, to insert into the read group header  Default
    value: null.'
  id: PREDICTED_INSERT_SIZE
  inputBinding:
    position: 0
    prefix: --PREDICTED_INSERT_SIZE
  type: int?
- doc: 'Program group to insert into the read group header.  Default value: null.'
  id: PROGRAM_GROUP
  inputBinding:
    position: 0
    prefix: --PROGRAM_GROUP
  type: string?
- doc: ':FastqQualityFormat A value describing how the quality values are encoded
    in the input FASTQ file.  Either Solexa (phred scaling + 66), Illumina (phred
    scaling + 64) or Standard (phred scaling + 33).  If this value is not specified,
    the quality format will be detected automatically. Default value: null. Possible
    values: {Solexa, Illumina, Standard}'
  id: QUALITY_FORMAT
  inputBinding:
    position: 0
    prefix: --QUALITY_FORMAT
  type: string?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Read group name  Default value: A.'
  id: READ_GROUP_NAME
  inputBinding:
    position: 0
    prefix: --READ_GROUP_NAME
  type: string?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: ':Iso8601Date    Date the run was produced, to insert into the read group header  Default
    value: null.'
  id: RUN_DATE
  inputBinding:
    position: 0
    prefix: --RUN_DATE
  type: boolean?
- doc: ':StringThe sequencing center from which the data originated  Default value:
    null.'
  id: SEQUENCING_CENTER
  inputBinding:
    position: 0
    prefix: --SEQUENCING_CENTER
  type: boolean?
- doc: ':SortOrder    The sort order for the output sam/bam file.  Default value:
    queryname. Possible values: {unsorted, queryname, coordinate, duplicate, unknown}'
  id: SORT_ORDER
  inputBinding:
    position: 0
    prefix: --SORT_ORDER
  type: string?
- doc: "Deprecated (No longer used). If true and this is an unpaired fastq any occurrence\
    \ of '/1' or '/2' will be removed from the end of a read name.  Default value:\
    \ false. Possible values: {true, false}"
  id: STRIP_UNPAIRED_MATE_NUMBER
  inputBinding:
    position: 0
    prefix: --STRIP_UNPAIRED_MATE_NUMBER
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
- doc: 'Use sequential fastq files with the suffix <prefix>_###.fastq or <prefix>_###.fastq.gz
    Default value: false. Possible values: {true, false}'
  id: USE_SEQUENTIAL_FASTQS
  inputBinding:
    position: 0
    prefix: --USE_SEQUENTIAL_FASTQS
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
