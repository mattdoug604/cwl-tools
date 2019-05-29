#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- BQSRPipelineSpark
class: CommandLineTool
cwlVersion: v1.0
id: gatk_BQSRPipelineSpark
inputs:
- doc: BAM/SAM/CRAM file containing reads  This argument must be specified at least
    once. Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: string
- doc: the known variants  This argument must be specified at least once. Required.
  id: known_sites
  inputBinding:
    position: 0
    prefix: --known-sites
  type: string
- doc: the output bam  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: string
- doc: Reference sequence file  Required.
  id: reference
  inputBinding:
    position: 0
    prefix: --reference
  type: string
- doc: 'If true, adds a command line header line to created VCF files.  Default value:
    true. Possible values: {true, false}'
  id: add_output_vcf_command_line
  inputBinding:
    position: 0
    prefix: --add-output-vcf-command-line
  type: boolean?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'maximum number of bytes to read from a file into each partition of reads.
    Setting this higher will result in fewer partitions. Note that this will not be
    equal to the size of the partition in memory. Defaults to 0, which uses the default
    split size (determined by the Hadoop input format, typically the size of one HDFS
    block).  Default value: 0.'
  id: bam_partition_size
  inputBinding:
    position: 0
    prefix: --bam-partition-size
  type: long?
- doc: 'the binary tag covariate name if using it  Default value: null.'
  id: binary_tag_name
  inputBinding:
    position: 0
    prefix: --binary-tag-name
  type: string?
- doc: 'BQSR BAQ gap open penalty (Phred Scaled).  Default value is 40.  30 is perhaps
    better for whole genome call sets  Default value: 40.0.'
  id: bqsr_baq_gap_open_penalty
  inputBinding:
    position: 0
    prefix: --bqsr-baq-gap-open-penalty
  type: double?
- doc: 'spark properties to set on the spark context in the format <property>=<value>  This
    argument may be specified 0 or more times. Default value: null.'
  id: conf
  inputBinding:
    position: 0
    prefix: --conf
  type: string?
- doc: ''
  id: default_base_qualities
  inputBinding:
    position: 0
    prefix: --default-base-qualities
  type: boolean
- doc: ':Byte default quality for the base deletions covariate  Default value: 45.'
  id: deletions_default_quality
  inputBinding:
    position: 0
    prefix: --deletions-default-quality
  type: boolean?
- doc: 'Read filters to be disabled before analysis  This argument may be specified
    0 or more times. Default value: null. Possible Values: {WellformedReadFilter}'
  id: disable_read_filter
  inputBinding:
    position: 0
    prefix: --disable-read-filter
  type: string?
- doc: 'If specified, do not check the sequence dictionaries from our inputs for compatibility.
    Use at your own risk!  Default value: false. Possible values: {true, false}'
  id: disable_sequence_dictionary_validation
  inputBinding:
    position: 0
    prefix: --disable-sequence-dictionary-validation
  type: boolean?
- doc: 'Emit original base qualities under the OQ tag  Default value: false. Possible
    values: {true, false}'
  id: emit_original_quals
  inputBinding:
    position: 0
    prefix: --emit-original-quals
  type: boolean?
- doc: ':StringOne or more genomic intervals to exclude from processing  This argument
    may be specified 0 or more times. Default value: null.'
  id: exclude_intervals
  inputBinding:
    position: 0
    prefix: --exclude-intervals
  type: boolean?
- doc: 'A configuration file to use with the GATK.  Default value: null.'
  id: gatk_config_file
  inputBinding:
    position: 0
    prefix: --gatk-config-file
  type: string?
- doc: 'If the GCS bucket channel errors out, how many times it will attempt to re-initiate
    the connection  Default value: 20.'
  id: gcs_max_retries
  inputBinding:
    position: 0
    prefix: --gcs-max-retries
  type: int?
- doc: 'Project to bill when accessing "requester pays" buckets. If unset, these buckets
    cannot be accessed.  Default value: .'
  id: gcs_project_for_requester_pays
  inputBinding:
    position: 0
    prefix: --gcs-project-for-requester-pays
  type: string?
- doc: ''
  id: global_qscore_prior
  inputBinding:
    position: 0
    prefix: --global-qscore-prior
  type: double
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'Size of the k-mer context to be used for base insertions and deletions  Default
    value: 3.'
  id: indels_context_size
  inputBinding:
    position: 0
    prefix: --indels-context-size
  type: int?
- doc: ':Byte default quality for the base insertions covariate  Default value: 45.'
  id: insertions_default_quality
  inputBinding:
    position: 0
    prefix: --insertions-default-quality
  type: boolean?
- doc: 'Amount of padding (in bp) to add to each interval you are excluding.  Default
    value: 0.'
  id: interval_exclusion_padding
  inputBinding:
    position: 0
    prefix: --interval-exclusion-padding
  type: int?
- doc: ':IntervalMergingRule Interval merging rule for abutting intervals  Default
    value: ALL. Possible values: {ALL, OVERLAPPING_ONLY}'
  id: interval_merging_rule
  inputBinding:
    position: 0
    prefix: --interval-merging-rule
  type: string?
- doc: ':IntegerAmount of padding (in bp) to add to each interval you are including.  Default
    value: 0.'
  id: interval_padding
  inputBinding:
    position: 0
    prefix: --interval-padding
  type: boolean?
- doc: ':IntervalSetRule Set merging approach to use for combining interval inputs  Default
    value: UNION. Possible values: {UNION, INTERSECTION}'
  id: interval_set_rule
  inputBinding:
    position: 0
    prefix: --interval-set-rule
  type: string?
- doc: 'One or more genomic intervals over which to operate  This argument may be
    specified 0 or more times. Default value: null.'
  id: intervals
  inputBinding:
    position: 0
    prefix: --intervals
  type: string?
- doc: ':Byte       minimum quality for the bases in the tail of the reads to be considered  Default
    value: 2.'
  id: low_quality_tail
  inputBinding:
    position: 0
    prefix: --low-quality-tail
  type: boolean?
- doc: 'The maximum cycle value permitted for the Cycle covariate  Default value:
    500.'
  id: maximum_cycle_value
  inputBinding:
    position: 0
    prefix: --maximum-cycle-value
  type: int?
- doc: 'Size of the k-mer context to be used for base mismatches  Default value: 2.'
  id: mismatches_context_size
  inputBinding:
    position: 0
    prefix: --mismatches-context-size
  type: int?
- doc: :Byte
  id: mismatches_default_quality
  inputBinding:
    position: 0
    prefix: --mismatches-default-quality
  type: boolean?
- doc: ''
  id: '1.'
  inputBinding:
    position: 0
    prefix: '-1.'
  type: boolean
- doc: 'For tools that shuffle data or write an output, sets the number of reducers.
    Defaults to 0, which gives one partition per 10MB of input.  Default value: 0.'
  id: num_reducers
  inputBinding:
    position: 0
    prefix: --num-reducers
  type: int?
- doc: 'when writing a bam, in single sharded mode this directory to write the temporary
    intermediate output shards, if not specified .parts/ will be used  Default value:
    null. Cannot be used in conjuction with argument(s) shardedOutput'
  id: output_shard_tmp_dir
  inputBinding:
    position: 0
    prefix: --output-shard-tmp-dir
  type: string?
- doc: ''
  id: preserve_qscores_less_than
  inputBinding:
    position: 0
    prefix: --preserve-qscores-less-than
  type: int
- doc: ')  Default value: 6.'
  id: bqsr
  inputBinding:
    position: 0
    prefix: -bqsr
  type: boolean?
- doc: 'Name of the program running  Default value: null.'
  id: program_name
  inputBinding:
    position: 0
    prefix: --program-name
  type: string?
- doc: 'Quantize quality scores to a given number of levels  Default value: 0.  Cannot
    be used in conjuction with argument(s) staticQuantizationQuals roundDown'
  id: quantize_quals
  inputBinding:
    position: 0
    prefix: --quantize-quals
  type: int?
- doc: 'number of distinct quality scores in the quantized output  Default value:
    16.'
  id: quantizing_levels
  inputBinding:
    position: 0
    prefix: --quantizing-levels
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Read filters to be applied before analysis  This argument may be specified
    0 or more times. Default value: null. Possible Values: {AlignmentAgreesWithHeaderReadFilter,
    AllowAllReadsReadFilter, AmbiguousBaseReadFilter, CigarContainsNoNOperator, FirstOfPairReadFilter,
    FragmentLengthReadFilter, GoodCigarReadFilter, HasReadGroupReadFilter, LibraryReadFilter,
    MappedReadFilter, MappingQualityAvailableReadFilter, MappingQualityNotZeroReadFilter,
    MappingQualityReadFilter, MatchingBasesAndQualsReadFilter, MateDifferentStrandReadFilter,
    MateOnSameContigOrNoMappedMateReadFilter, MetricsReadFilter, NonZeroFragmentLengthReadFilter,
    NonZeroReferenceLengthAlignmentReadFilter, NotDuplicateReadFilter, NotOpticalDuplicateReadFilter,
    NotSecondaryAlignmentReadFilter, NotSupplementaryAlignmentReadFilter, OverclippedReadFilter,
    PairedReadFilter, PassesVendorQualityCheckReadFilter, PlatformReadFilter, PlatformUnitReadFilter,
    PrimaryLineReadFilter, ProperlyPairedReadFilter, ReadGroupBlackListReadFilter,
    ReadGroupReadFilter, ReadLengthEqualsCigarLengthReadFilter, ReadLengthReadFilter,
    ReadNameReadFilter, ReadStrandFilter, SampleReadFilter, SecondOfPairReadFilter,
    SeqIsStoredReadFilter, ValidAlignmentEndReadFilter, ValidAlignmentStartReadFilter,
    WellformedReadFilter}'
  id: read_filter
  inputBinding:
    position: 0
    prefix: --read-filter
  type: string?
- doc: 'Indices to use for the read inputs. If specified, an index must be provided
    for every read input and in the same order as the read inputs. If this argument
    is not specified, the path to the index for each input will be inferred automatically.  This
    argument may be specified 0 or more times. Default value: null.'
  id: read_index
  inputBinding:
    position: 0
    prefix: --read-index
  type: string?
- doc: ':ValidationStringency Validation stringency for all SAM/BAM/CRAM/SRA files
    read by this program.  The default stringency value SILENT can improve performance
    when processing a BAM file in which variable-length data (read, qualities, tags)
    do not otherwise need to be decoded.  Default value: SILENT. Possible values:
    {STRICT, LENIENT, SILENT}'
  id: read_validation_stringency
  inputBinding:
    position: 0
    prefix: --read-validation-stringency
  type: string?
- doc: 'For tools that write an output, write the output in multiple pieces (shards)  Default
    value: false. Possible values: {true, false}  Cannot be used in conjuction with
    argument(s) shardedPartsDir'
  id: sharded_output
  inputBinding:
    position: 0
    prefix: --sharded-output
  type: boolean?
- doc: 'URL of the Spark Master to submit jobs to when using the Spark pipeline runner.  Default
    value: local[*].'
  id: spark_master
  inputBinding:
    position: 0
    prefix: --spark-master
  type: string?
- doc: 'Temp directory to use.  Default value: null.'
  id: tmp_dir
  inputBinding:
    position: 0
    prefix: --tmp-dir
  type: string?
- doc: 'Whether to use the JdkDeflater (as opposed to IntelDeflater)  Default value:
    false. Possible values: {true, false}'
  id: use_jdk_deflater
  inputBinding:
    position: 0
    prefix: --use-jdk-deflater
  type: boolean?
- doc: 'Whether to use the JdkInflater (as opposed to IntelInflater)  Default value:
    false. Possible values: {true, false}'
  id: use_jdk_inflater
  inputBinding:
    position: 0
    prefix: --use-jdk-inflater
  type: boolean?
- doc: 'Use the base quality scores from the OQ tag  Default value: false. Possible
    values: {true, false}'
  id: use_original_qualities
  inputBinding:
    position: 0
    prefix: --use-original-qualities
  type: boolean?
- doc: ':LogLevel Control verbosity of logging.  Default value: INFO. Possible values:
    {ERROR, WARNING, INFO, DEBUG}'
  id: verbosity
  inputBinding:
    position: 0
    prefix: --verbosity
  type: string?
- doc: 'display the version number for this tool  Default value: false. Possible values:
    {true, false}'
  id: version
  inputBinding:
    position: 0
    prefix: --version
  type: boolean?
- doc: 'Disable all tool default read filters (WARNING: many tools will not function
    correctly without their default read filters on)  Default value: false. Possible
    values: {true, false}'
  id: disable_tool_default_read_filters
  inputBinding:
    position: 0
    prefix: --disable-tool-default-read-filters
  type: boolean?
- doc: ':BooleanRound quals down to nearest quantized qual  Default value: false.
    Possible values: {true, false}  Cannot be used in conjuction with argument(s)
    quantizationLevels'
  id: round_down_quantized
  inputBinding:
    position: 0
    prefix: --round-down-quantized
  type: boolean?
- doc: 'display hidden arguments  Default value: false. Possible values: {true, false}'
  id: showHidden
  inputBinding:
    position: 0
    prefix: --showHidden
  type: boolean?
- doc: 'argument may be specified 0 or more times. Default value: null.  Cannot be
    used in conjuction with argument(s) quantizationLevels'
  id: static_quantized_quals
  inputBinding:
    position: 0
    prefix: --static-quantized-quals
  type: int?
- doc: 'Threshold number of ambiguous bases. If null, uses threshold fraction; otherwise,
    overrides threshold fraction.  Default value: null.  Cannot be used in conjuction
    with argument(s) maxAmbiguousBaseFraction'
  id: ambig_filter_bases
  inputBinding:
    position: 0
    prefix: --ambig-filter-bases
  type: int?
- doc: 'Threshold fraction of ambiguous bases  Default value: 0.05.  Cannot be used
    in conjuction with argument(s) maxAmbiguousBases'
  id: ambig_filter_frac
  inputBinding:
    position: 0
    prefix: --ambig-filter-frac
  type: double?
- doc: 'Maximum length of fragment (insert size)  Default value: 1000000.'
  id: max_fragment_length
  inputBinding:
    position: 0
    prefix: --max-fragment-length
  type: int?
- doc: Name of the library to keep  This argument must be specified at least once.
    Required.
  id: library
  inputBinding:
    position: 0
    prefix: --library
  type: string
- doc: 'Maximum mapping quality to keep (inclusive)  Default value: null.'
  id: maximum_mapping_quality
  inputBinding:
    position: 0
    prefix: --maximum-mapping-quality
  type: int?
- doc: 'Minimum mapping quality to keep (inclusive)  Default value: 10.'
  id: minimum_mapping_quality
  inputBinding:
    position: 0
    prefix: --minimum-mapping-quality
  type: int?
- doc: 'Allow a read to be filtered out based on having only 1 soft-clipped block.
    By default, both ends must have a soft-clipped block, setting this flag requires
    only 1 soft-clipped block  Default value: false. Possible values: {true, false}'
  id: dont_require_soft_clips_both_ends
  inputBinding:
    position: 0
    prefix: --dont-require-soft-clips-both-ends
  type: boolean?
- doc: 'Minimum number of aligned bases  Default value: 30.'
  id: filter_too_short
  inputBinding:
    position: 0
    prefix: --filter-too-short
  type: int?
- doc: Platform attribute (PL) to match  This argument must be specified at least
    once. Required.
  id: platform_filter_name
  inputBinding:
    position: 0
    prefix: --platform-filter-name
  type: string
- doc: Platform unit (PU) to filter out  This argument must be specified at least
    once. Required.
  id: black_listed_lanes
  inputBinding:
    position: 0
    prefix: --black-listed-lanes
  type: string
- doc: :StringThe name of the read group to filter out  This argument must be specified
    at least once. Required.
  id: read_group_black_list
  inputBinding:
    position: 0
    prefix: --read-group-black-list
  type: array
- doc: The name of the read group to keep  Required.
  id: keep_read_group
  inputBinding:
    position: 0
    prefix: --keep-read-group
  type: string
- doc: Keep only reads with length at most equal to the specified value  Required.
  id: max_read_length
  inputBinding:
    position: 0
    prefix: --max-read-length
  type: int
- doc: 'Keep only reads with length at least equal to the specified value  Default
    value: 1.'
  id: min_read_length
  inputBinding:
    position: 0
    prefix: --min-read-length
  type: int?
- doc: Keep only reads with this read name  Required.
  id: read_name
  inputBinding:
    position: 0
    prefix: --read-name
  type: string
- doc: 'Keep only reads on the reverse strand  Required. Possible values: {true, false}'
  id: keep_reverse_strand_only
  inputBinding:
    position: 0
    prefix: --keep-reverse-strand-only
  type: boolean
- doc: The name of the sample(s) to keep, filtering out all others  This argument
    must be specified at least once. Required.
  id: sample
  inputBinding:
    position: 0
    prefix: --sample
  type: string
- doc: ''
  id: Dsamjdk.use_async_io_write_samtools
  inputBinding:
    position: 0
    prefix: -Dsamjdk.use_async_io_write_samtools
  type: boolean
