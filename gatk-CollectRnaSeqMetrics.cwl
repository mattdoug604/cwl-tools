#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CollectRnaSeqMetrics
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CollectRnaSeqMetrics
inputs:
- doc: picard.jar
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: If a read maps to a sequence specified with this option, all the bases in the
    read are counted as ignored bases.  These reads are not counted as   This argument
    must be specified at least once. Required.
  id: IGNORE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --IGNORE_SEQUENCE
  type: string
- doc: Input SAM or BAM file.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: to write the output to.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: 'Gene annotations in refFlat form.  Format described here: http://genome.ucsc.edu/goldenPath/gbdDescriptionsOld.html#RefFlat  Required.'
  id: REF_FLAT
  inputBinding:
    position: 0
    prefix: --REF_FLAT
  type: File
- doc: ':StrandSpecificity For strand-specific library prep. For unpaired reads, use
    FIRST_READ_TRANSCRIPTION_STRAND if the reads are expected to be on the transcription
    strand.  Required. Possible values: , FIRST_READ_TRANSCRIPTION_STRAND, SECOND_READ_TRANSCRIPTION_STRAND}'
  id: STRAND_SPECIFICITY
  inputBinding:
    position: 0
    prefix: --STRAND_SPECIFICITY
  type: 'null'
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'If true (default), then the sort order in the header file will be ignored.  Default
    value: true. Possible values: {true, false}'
  id: ASSUME_SORTED
  inputBinding:
    position: 0
    prefix: --ASSUME_SORTED
  type: boolean?
- doc: 'The PDF file to write out a plot of normalized position vs. coverage.  Default
    value: .'
  id: CHART_OUTPUT
  inputBinding:
    position: 0
    prefix: --CHART_OUTPUT
  type: null?
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
- doc: ':MetricAccumulationLevel The level(s) at which to accumulate metrics.    This
    argument may be specified 0 or more times. Default value: [ALL_READS]. Possible
    values: {ALL_READS, SAMPLE, LIBRARY, READ_GROUP}'
  id: METRIC_ACCUMULATION_LEVEL
  inputBinding:
    position: 0
    prefix: --METRIC_ACCUMULATION_LEVEL
  type: string?
- doc: 'When calculating coverage based values (e.g. CV of coverage) only use transcripts
    of this length or greater.  Default value: 500.'
  id: MINIMUM_LENGTH
  inputBinding:
    position: 0
    prefix: --MINIMUM_LENGTH
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
- doc: 'Location of rRNA sequences in genome, in interval_list format.  If not specified
    no bases will be identified as being ribosomal.  Format described <a href="http://samtools.github.io/htsjdk/javadoc/htsjdk/htsjdk/samtools/util/IntervalList.html">here</a>:
    Default value: null.'
  id: RIBOSOMAL_INTERVALS
  inputBinding:
    position: 0
    prefix: --RIBOSOMAL_INTERVALS
  type: File?
- doc: 'This percentage of the length of a fragment must overlap one of the ribosomal
    intervals for a read or read pair to be considered rRNA.  Default value: 0.8.'
  id: RRNA_FRAGMENT_PERCENTAGE
  inputBinding:
    position: 0
    prefix: --RRNA_FRAGMENT_PERCENTAGE
  type: double?
- doc: 'Stop after processing N reads, mainly for debugging.  Default value: 0.'
  id: STOP_AFTER
  inputBinding:
    position: 0
    prefix: --STOP_AFTER
  type: long?
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
