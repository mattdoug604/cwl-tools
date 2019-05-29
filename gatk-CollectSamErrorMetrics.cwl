#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CollectSamErrorMetrics
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CollectSamErrorMetrics
inputs:
- doc: Input SAM or BAM file.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: Base name for output files. Actual file names will be generated from the basename
    and suffixes from the ERROR and STRATIFIER by adding a '.' and then error_by_stratifier[_and_stratifier]*
    where 'error' is ERROR's extension, and 'stratifier' is STRATIFIER's suffix. For
    example, an ERROR_METRIC of ERROR:BASE_QUALITY:GC_CONTENT will produce an extension
    '.error_by_base_quality_and_gc'. The suffixes can be found in the documentation
    for ERROR_VALUE and SUFFIX_VALUE.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: Reference sequence file.  Required.
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File
- doc: VCF of known variation for sample. program will skip over polymorphic sites
    in this VCF and avoid collecting data on these loci.  Required.
  id: VCF
  inputBinding:
    position: 0
    prefix: --VCF
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
- doc: 'Errors to collect in the form of "ERROR(:STRATIFIER)*". To see the values
    available for ERROR and STRATIFIER look at the documentation for the arguments
    ERROR_VALUE and STRATIFIER_VALUE.  This argument may be specified 0 or more times.
    Default value: [ERROR, ERROR:BASE_QUALITY, ERROR:INSERT_LENGTH, ERROR:GC_CONTENT,
    ERROR:READ_DIRECTION, ERROR:PAIR_ORIENTATION, ERROR:HOMOPOLYMER, ERROR:BINNED_HOMOPOLYMER,
    ERROR:CYCLE, ERROR:READ_ORDINALITY, ERROR:READ_ORDINALITY:CYCLE, ERROR:READ_ORDINALITY:HOMOPOLYMER,
    ERROR:READ_ORDINALITY:GC_CONTENT, ERROR:READ_ORDINALITY:PRE_DINUC, ERROR:MAPPING_QUALITY,
    ERROR:READ_GROUP, ERROR:MISMATCHES_IN_READ, ERROR:ONE_BASE_PADDED_CONTEXT, OVERLAPPING_ERROR,
    OVERLAPPING_ERROR:BASE_QUALITY, OVERLAPPING_ERROR:INSERT_LENGTH, OVERLAPPING_ERROR:READ_ORDINALITY,
    OVERLAPPING_ERROR:READ_ORDINALITY:CYCLE, OVERLAPPING_ERROR:READ_ORDINALITY:HOMOPOLYMER,
    OVERLAPPING_ERROR:READ_ORDINALITY:GC_CONTENT].'
  id: ERROR_METRICS
  inputBinding:
    position: 0
    prefix: --ERROR_METRICS
  type: string?
- doc: ":ErrorType       A fake argument used to show the options of ERROR (in ERROR_METRICS).\
    \  Default value: . Possible values: { ERROR (Collects the average error at the\
    \ bases provided. Suffix is: 'error'.) OVERLAPPING_ERROR (Only considers bases\
    \ from the overlapping parts of reads from the same template. For those bases,\
    \ it calculates the error that can be attributable to pre-sequencing, versus during-sequencing.\
    \ Suffix is: 'overlapping_error'.) }"
  id: ERROR_VALUE
  inputBinding:
    position: 0
    prefix: --ERROR_VALUE
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
- doc: 'Region(s) to limit analysis to. Supported formats are VCF or interval_list.
    Will intersect inputs if multiple are given.   This argument may be specified
    0 or more times. Default value: null.'
  id: INTERVALS
  inputBinding:
    position: 0
    prefix: --INTERVALS
  type: File?
- doc: ':IntegerShortest homopolymer which is considered long.  Used by the BINNED_HOMOPOLYMER
    stratifier. Default value: 6.'
  id: LONG_HOMOPOLYMER
  inputBinding:
    position: 0
    prefix: --LONG_HOMOPOLYMER
  type: boolean?
- doc: 'Maximum number of loci to process (or unlimited if 0).  Default value: 0.'
  id: MAX_LOCI
  inputBinding:
    position: 0
    prefix: --MAX_LOCI
  type: long?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: 'Minimum base quality to include base.  Default value: 20.'
  id: MIN_BASE_Q
  inputBinding:
    position: 0
    prefix: --MIN_BASE_Q
  type: int?
- doc: 'Minimum mapping quality to include read.  Default value: 20.'
  id: MIN_MAPPING_Q
  inputBinding:
    position: 0
    prefix: --MIN_MAPPING_Q
  type: int?
- doc: 'The prior error, in phred-scale (used for calculating empirical error rates).  Default
    value: 30.'
  id: PRIOR_Q
  inputBinding:
    position: 0
    prefix: --PRIOR_Q
  type: int?
- doc: 'The probability of selecting a locus for analysis (for downsampling).  Default
    value: 1.0.'
  id: PROBABILITY
  inputBinding:
    position: 0
    prefix: --PROBABILITY
  type: double?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: ":Stratifier A fake argument used to show the options of STRATIFIER (in ERROR_METRICS).\
    \  Default value: . Possible values: { ALL (Puts all bases in the same stratum.\
    \ Suffix is 'all'.) GC_CONTENT (Stratifies bases according to the gc content of\
    \ their read. Suffix is 'gc'.) READ_ORDINALITY (Stratifies bases according to\
    \ their read ordinality (i.e. first or second). Suffix is 'read_ordinality'.)\
    \ READ_BASE (Stratifies bases by the read in the original reading direction. Suffix\
    \ is 'read_base'.) READ_DIRECTION (Stratifies bases to +/- based on the alignment\
    \ direction of the read. Suffix is 'read_direction'.) PAIR_ORIENTATION (Stratifies\
    \ bases into F1R2/F2R1 according to their reads orientation and ordinality. Assumes\
    \ reads are \"innies\". Suffix is 'pair_orientation'.) REFERENCE_BASE (Stratifies\
    \ bases by the read-directed reference base. Suffix is 'ref_base'.) PRE_DINUC\
    \ (Stratifies bases by the read base at the previous cycle, and the current reference\
    \ base. Suffix is 'pre_dinuc'.) POST_DINUC (Stratifies bases by the read base\
    \ at the previous cycle, and the current reference base. Suffix is 'post_dinuc'.)\
    \ HOMOPOLYMER_LENGTH (Stratifies bases based on the length of homopolymer they\
    \ are part of (only accounts for bases that were read prior to the current base).\
    \ Suffix is 'homopolymer_length'.) HOMOPOLYMER (Stratifies bases based on the\
    \ length of homopolymer, the base that the homopolymer is comprised of, and the\
    \ reference base. Suffix is 'homopolymer_and_following_ref_base'.) BINNED_HOMOPOLYMER\
    \ (Stratifies bases based on the scale of homopolymer (long or short), the base\
    \ that the homopolymer is comprised of, and the reference base. Suffix is 'binned_length_homopolymer_and_following_ref_base'.)\
    \ FLOWCELL_TILE (Stratifies according to the flowcell-tile where the base was\
    \ read (taken from the read name). Suffix is 'tile'.) READ_GROUP (Stratifies bases\
    \ according to their read-group id. Suffix is 'read_group'.) CYCLE (Stratifies\
    \ bases to the machine cycle during which they were read. Suffix is 'cycle'.)\
    \ BINNED_CYCLE (Stratifies bases according to the binned machine cycle in the\
    \ read similar to CYCLE, but binned into 5 evenly spaced ranges across the size\
    \ of the read.  This stratifier may produce confusing results when used on datasets\
    \ with variable sized reads. Suffix is 'binned_cycle'.) INSERT_LENGTH (Stratifies\
    \ bases according to the insert-size they came from (taken from the TLEN field.)\
    \ Suffix is 'insert_length'.) BASE_QUALITY (Stratifies bases according to their\
    \ base quality. Suffix is 'base_quality'.) MAPPING_QUALITY (Stratifies bases according\
    \ to their read's mapping quality. Suffix is 'mapping_quality'.) MISMATCHES_IN_READ\
    \ (Stratifies bases according to the number of bases in the read that mismatch\
    \ the reference excluding the current base.  This stratifier requires the NM tag.\
    \ Suffix is 'mismatches_in_read'.) ONE_BASE_PADDED_CONTEXT (Stratifies bases according\
    \ the current reference base and a one base padded region from the read resulting\
    \ in a 3-base context. Suffix is 'one_base_padded_context'.) TWO_BASE_PADDED_CONTEXT\
    \ (Stratifies bases according the current reference base and a two base padded\
    \ region from the read resulting in a 5-base context. Suffix is 'two_base_padded_context'.)\
    \ CONSENSUS (Stratifies bases according to whether or not duplicate reads were\
    \ used to form a consensus read.  This stratifier makes use of the aD, bD, and\
    \ cD tags for duplex consensus reads.  If the reads are single index consensus,\
    \ only the cD tags are used. Suffix is 'consensus'.) NS_IN_READ (Stratifies bases\
    \ according to the number of Ns in the read. Suffix is 'ns_in_read'.) }"
  id: STRATIFIER_VALUE
  inputBinding:
    position: 0
    prefix: --STRATIFIER_VALUE
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
