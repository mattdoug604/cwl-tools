#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- MarkIlluminaAdapters
class: CommandLineTool
cwlVersion: v1.0
id: gatk_MarkIlluminaAdapters
inputs:
- doc: picard.jar MarkIlluminaAdapters \<br /> INPUT=input.sam \<br />METRICS=metrics.txt
    </pre><hr />
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Undocumented option  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: Histogram showing counts of bases_clipped in how many reads  Required.
  id: METRICS
  inputBinding:
    position: 0
    prefix: --METRICS
  type: File
- doc: 'Adapters are truncated to this length to speed adapter matching.  Set to a
    large number to effectively disable truncation.  Default value: 30.'
  id: ADAPTER_TRUNCATION_LENGTH
  inputBinding:
    position: 0
    prefix: --ADAPTER_TRUNCATION_LENGTH
  type: int?
- doc: ':IlluminaAdapterPairWhich adapters sequences to attempt to identify and clip.  This
    argument may be specified 0 or more times. Default value: [INDEXED, DUAL_INDEXED,
    PAIRED_END]. Possible values: {PAIRED_END, INDEXED, SINGLE_END, NEXTERA_V1, NEXTERA_V2,
    DUAL_INDEXED, FLUIDIGM, TRUSEQ_SMALLRNA, ALTERNATIVE_SINGLE_END}'
  id: ADAPTERS
  inputBinding:
    position: 0
    prefix: --ADAPTERS
  type: string?
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
- doc: 'For specifying adapters other than standard Illumina  Default value: null.'
  id: FIVE_PRIME_ADAPTER
  inputBinding:
    position: 0
    prefix: --FIVE_PRIME_ADAPTER
  type: string?
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
- doc: 'The maximum mismatch error rate to tolerate when clipping paired-end reads.  Default
    value: 0.1.'
  id: MAX_ERROR_RATE_PE
  inputBinding:
    position: 0
    prefix: --MAX_ERROR_RATE_PE
  type: double?
- doc: 'The maximum mismatch error rate to tolerate when clipping single-end reads.  Default
    value: 0.1.'
  id: MAX_ERROR_RATE_SE
  inputBinding:
    position: 0
    prefix: --MAX_ERROR_RATE_SE
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
- doc: 'The minimum number of bases to match over (per-read) when clipping paired-end
    reads. Default value: 6.'
  id: MIN_MATCH_BASES_PE
  inputBinding:
    position: 0
    prefix: --MIN_MATCH_BASES_PE
  type: int?
- doc: 'The minimum number of bases to match over when clipping single-end reads.  Default
    value: 12.'
  id: MIN_MATCH_BASES_SE
  inputBinding:
    position: 0
    prefix: --MIN_MATCH_BASES_SE
  type: int?
- doc: ':IntegerIf pruning the adapter list, keep only this many adapter sequences
    when pruning the list (plus any adapters that were tied with the adapters being
    kept).  Default value: 1.'
  id: NUM_ADAPTERS_TO_KEEP
  inputBinding:
    position: 0
    prefix: --NUM_ADAPTERS_TO_KEEP
  type: boolean?
- doc: 'If output is not specified, just the metrics are generated  Default value:
    null.'
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File?
- doc: 'DEPRECATED. Whether this is a paired-end run. No longer used.  Default value:
    null. Possible values: {true, false}'
  id: PAIRED_RUN
  inputBinding:
    position: 0
    prefix: --PAIRED_RUN
  type: boolean?
- doc: If looking for multiple adapter sequences, then after having seen this many
    adapters, shorten the list of sequences. Keep the adapters that were found most
    frequently in the
  id: PRUNE_ADAPTER_LIST_AFTER_THIS_MANY_ADAPTERS_SEEN
  inputBinding:
    position: 0
    prefix: --PRUNE_ADAPTER_LIST_AFTER_THIS_MANY_ADAPTERS_SEEN
  type: int?
- doc: 'if the input has a heterogeneous mix of adapters so shortening is undesirable.  Default
    value: 100.'
  id: '1'
  inputBinding:
    position: 0
    prefix: '-1'
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
- doc: 'For specifying adapters other than standard Illumina  Default value: null.'
  id: THREE_PRIME_ADAPTER
  inputBinding:
    position: 0
    prefix: --THREE_PRIME_ADAPTER
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
