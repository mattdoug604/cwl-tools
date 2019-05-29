#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- FindBreakpointEvidenceSpark
class: CommandLineTool
cwlVersion: v1.0
id: gatk_FindBreakpointEvidenceSpark
inputs:
- doc: bwa-mem index image file  Required.
  id: aligner_index_image
  inputBinding:
    position: 0
    prefix: --aligner-index-image
  type: string
- doc: BAM/SAM/CRAM file containing reads  This argument must be specified at least
    once. Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: string
- doc: containing ubiquitous kmer list. see FindBadGenomicKmersSpark to generate it.
    Required.
  id: kmers_to_ignore
  inputBinding:
    position: 0
    prefix: --kmers-to-ignore
  type: string
- doc: sam file for aligned contigs  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: string
- doc: 'Adapter sequence.  Default value: null.'
  id: adapter_sequence
  inputBinding:
    position: 0
    prefix: --adapter-sequence
  type: string?
- doc: 'If true, adds a command line header line to created VCF files.  Default value:
    true. Possible values: {true, false}'
  id: add_output_vcf_command_line
  inputBinding:
    position: 0
    prefix: --add-output-vcf-command-line
  type: boolean?
- doc: 'Proper pairs have the positive strand read upstream of the negative strand
    read, but we allow this much slop for short fragments.  Default value: 10.'
  id: allowed_short_fragment_overhang
  inputBinding:
    position: 0
    prefix: --allowed-short-fragment-overhang
  type: int?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: ':SortOrder sorting order to be used for the output assembly alignments SAM/BAM
    file (currently only coordinate or query name is supported)  Default value: coordinate.
    Possible values: {unsorted, queryname, coordinate, duplicate, unknown}'
  id: assembled_contigs_output_order
  inputBinding:
    position: 0
    prefix: --assembled-contigs-output-order
  type: string?
- doc: 'Guess at the ratio of reads in the final assembly to the number reads mapped
    to the interval.  Default value: 7.'
  id: assembly_to_mapped_size_ratio_guess
  inputBinding:
    position: 0
    prefix: --assembly-to-mapped-size-ratio-guess
  type: int?
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
- doc: 'for evidence output  Default value: null.'
  id: breakpoint_evidence_dir
  inputBinding:
    position: 0
    prefix: --breakpoint-evidence-dir
  type: Directory?
- doc: 'for breakpoint intervals output  Default value: null.'
  id: breakpoint_intervals
  inputBinding:
    position: 0
    prefix: --breakpoint-intervals
  type: string?
- doc: 'KmerCleaner maximum copy number (not count, but copy number) for a kmer. Kmers
    observed too frequently are probably mismapped or ubiquitous.  Default value:
    4.'
  id: cleaner_max_copy_number
  inputBinding:
    position: 0
    prefix: --cleaner-max-copy-number
  type: int?
- doc: "KmerCleaner maximum number of intervals for a localizing kmer. If a kmer occurs\
    \ in too many intervals, it isn't sufficiently local.  Default value: 3."
  id: cleaner_max_intervals
  inputBinding:
    position: 0
    prefix: --cleaner-max-intervals
  type: int?
- doc: "KmerCleaner minimum kmer count for a localizing kmer.  If we see it less often\
    \ than this many times, we're guessing it's erroneous.  Default value: 4."
  id: cleaner_min_kmer_count
  inputBinding:
    position: 0
    prefix: --cleaner-min-kmer-count
  type: int?
- doc: 'spark properties to set on the spark context in the format <property>=<value>  This
    argument may be specified 0 or more times. Default value: null.'
  id: conf
  inputBinding:
    position: 0
    prefix: --conf
  type: string?
- doc: 'containing alt contig names that will be ignored when looking for inter-contig
    pairs Default value: null.'
  id: cross_contigs_to_ignore
  inputBinding:
    position: 0
    prefix: --cross-contigs-to-ignore
  type: File?
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
- doc: ':StringOne or more genomic intervals to exclude from processing  This argument
    may be specified 0 or more times. Default value: null.'
  id: exclude_intervals
  inputBinding:
    position: 0
    prefix: --exclude-intervals
  type: boolean?
- doc: 'Exclusion interval padding.  Default value: 0.'
  id: exclusion_interval_padding
  inputBinding:
    position: 0
    prefix: --exclusion-interval-padding
  type: int?
- doc: 'of reference intervals to exclude  Default value: null.'
  id: exclusion_intervals
  inputBinding:
    position: 0
    prefix: --exclusion-intervals
  type: string?
- doc: 'external evidence input file  Default value: null.'
  id: external_evidence
  inputBinding:
    position: 0
    prefix: --external-evidence
  type: string?
- doc: 'Uncertainty in location of external evidence.  Default value: 150.'
  id: external_evidence_uncertainty
  inputBinding:
    position: 0
    prefix: --external-evidence-uncertainty
  type: int?
- doc: 'Weight to give external evidence.  Default value: 10.'
  id: external_evidence_weight
  inputBinding:
    position: 0
    prefix: --external-evidence-weight
  type: int?
- doc: 'output dir for assembled fastqs  Default value: null.'
  id: fastq_dir
  inputBinding:
    position: 0
    prefix: --fastq-dir
  type: string?
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
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'for high-coverage intervals output  Default value: null.'
  id: high_coverage_intervals
  inputBinding:
    position: 0
    prefix: --high-coverage-intervals
  type: File?
- doc: 'We filter out contiguous regions of the genome that have coverage of at least
    high-depth-coverage-factor * avg-coverage and a peak coverage of high-depth-coverage-peak-factor
    * avg-coverage, because the reads mapped to those regions tend to be non-local
    and high depth prevents accurate assembly.  Default value: 3.'
  id: high_depth_coverage_factor
  inputBinding:
    position: 0
    prefix: --high-depth-coverage-factor
  type: int?
- doc: 'We filter out contiguous regions of the genome that have coverage of at least
    high-depth-coverage-factor * avg-coverage and a peak coverage of high-depth-coverage-peak-factor
    * avg-coverage, because the reads mapped to those regions tend to be non-local
    and high depth prevents accurate assembly.  Default value: 7.'
  id: high_depth_coverage_peak_factor
  inputBinding:
    position: 0
    prefix: --high-depth-coverage-peak-factor
  type: int?
- doc: 'Include read mapping location in FASTQ files.  Default value: true. Possible
    values: {true, false}'
  id: include_mapping_location
  inputBinding:
    position: 0
    prefix: --include-mapping-location
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
- doc: "Don't look for extra reads mapped outside the interval.  Default value: false.\
    \ Possible values: {true, false}"
  id: interval_only_assembly
  inputBinding:
    position: 0
    prefix: --interval-only-assembly
  type: boolean?
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
- doc: 'Kmer size.  Default value: 51.'
  id: k_size
  inputBinding:
    position: 0
    prefix: --k-size
  type: int?
- doc: 'for kmer intervals output  Default value: null.'
  id: kmer_intervals
  inputBinding:
    position: 0
    prefix: --kmer-intervals
  type: string?
- doc: 'Maximum kmer DUST score.  Default value: 49.'
  id: kmer_max_dust_score
  inputBinding:
    position: 0
    prefix: --kmer-max-dust-score
  type: int?
- doc: 'Maximum total bases in FASTQs that can be assembled.  Default value: 3000000.'
  id: max_fastq_size
  inputBinding:
    position: 0
    prefix: --max-fastq-size
  type: int?
- doc: 'Largest fragment size that will be explicitly counted in determining fragment
    size statistics.  Default value: 2000.'
  id: max_tracked_fragment_length
  inputBinding:
    position: 0
    prefix: --max-tracked-fragment-length
  type: int?
- doc: 'Minimum weight of the evidence that shares a distal target locus to validate
    the evidence, as a ratio of the mean coverage in the BAM. The default value is
    coherent-count / mean coverage ~ 7 / 42.9 ~ 0.163  Default value: 0.1633408753260167.'
  id: min_coherent_evidence_coverage_ratio
  inputBinding:
    position: 0
    prefix: --min-coherent-evidence-coverage-ratio
  type: double?
- doc: 'Minimum weight of the corroborating read evidence to validate some single
    piece of evidence, as a ratio of the mean coverage in the BAM. The default value
    is overlap-count / mean coverage ~ 15 / 42.9 ~ 0.350  Default value: 0.35001616141289293.'
  id: min_evidence_coverage_ratio
  inputBinding:
    position: 0
    prefix: --min-evidence-coverage-ratio
  type: double?
- doc: 'The minimum mapping quality for reads used to gather evidence of breakpoints.  Default
    value: 20.'
  id: min_evidence_mapq
  inputBinding:
    position: 0
    prefix: --min-evidence-mapq
  type: int?
- doc: "The minimum length of the matched portion of an interesting alignment.  Reads\
    \ that don't match at least this many reference bases won't be used in gathering\
    \ evidence.  Default value: 45."
  id: min_evidence_match_length
  inputBinding:
    position: 0
    prefix: --min-evidence-match-length
  type: int?
- doc: 'Minimum number of localizing kmers in a valid interval.  Default value: 5.'
  id: min_kmers_per_interval
  inputBinding:
    position: 0
    prefix: --min-kmers-per-interval
  type: int?
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
- doc: 'Name of the program running  Default value: null.'
  id: program_name
  inputBinding:
    position: 0
    prefix: --program-name
  type: string?
- doc: 'for mapped qname intervals output  Default value: null.'
  id: qname_intervals_for_assembly
  inputBinding:
    position: 0
    prefix: --qname-intervals-for-assembly
  type: File?
- doc: 'for mapped qname intervals output  Default value: null.'
  id: qname_intervals_mapped
  inputBinding:
    position: 0
    prefix: --qname-intervals-mapped
  type: File?
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
- doc: 'output file for read metadata  Default value: null.'
  id: read_metadata
  inputBinding:
    position: 0
    prefix: --read-metadata
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
- doc: 'Reference sequence  Default value: null.'
  id: reference
  inputBinding:
    position: 0
    prefix: --reference
  type: string?
- doc: 'Allow evidence filter to run without gaps annotation (assume no gaps).  Default
    value: false. Possible values: {true, false}'
  id: run_without_gaps_annotation
  inputBinding:
    position: 0
    prefix: --run-without-gaps-annotation
  type: boolean?
- doc: 'Allow evidence filter to run without annotation for single-read mappability
    of 100-mers (assume all mappable).  Default value: false. Possible values: {true,
    false}'
  id: run_without_umap_s100_annotation
  inputBinding:
    position: 0
    prefix: --run-without-umap-s100-annotation
  type: boolean?
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
- doc: 'Path to xgboost classifier model file for evidence filtering  Default value:
    null.'
  id: sv_evidence_filter_model_file
  inputBinding:
    position: 0
    prefix: --sv-evidence-filter-model-file
  type: string?
- doc: 'Minimum classified probability for a piece of evidence to pass xgboost evidence
    filter Default value: 0.92.'
  id: sv_evidence_filter_threshold_probability
  inputBinding:
    position: 0
    prefix: --sv-evidence-filter-threshold-probability
  type: double?
- doc: ':SvEvidenceFilterType Filter method for selecting evidence to group into Assembly
    Intervals  Default value: DENSITY. Possible values: {DENSITY, XGBOOST}'
  id: sv_evidence_filter_type
  inputBinding:
    position: 0
    prefix: --sv-evidence-filter-type
  type: string?
- doc: Path to file enumerating gaps in the reference genome, used by classifier to
    score evidence for filtering. To use classifier without specifying gaps file,
    pass the flag
  id: sv_genome_gaps_file
  inputBinding:
    position: 0
    prefix: --sv-genome-gaps-file
  type: string?
- doc: Path to single read 100-mer mappability file in the reference genome, used
    by classifier to score evidence for filtering. To use classifier without specifying
    mappability file,
  id: sv_genome_umap_s100_file
  inputBinding:
    position: 0
    prefix: --sv-genome-umap-s100-file
  type: string?
- doc: 'output file for non-assembled breakpoints in bedpe format  Default value:
    null.'
  id: target_link_file
  inputBinding:
    position: 0
    prefix: --target-link-file
  type: string?
- doc: 'Temp directory to use.  Default value: null.'
  id: tmp_dir
  inputBinding:
    position: 0
    prefix: --tmp-dir
  type: string?
- doc: 'for evidence output  Default value: null.'
  id: unfiltered_breakpoint_evidence_dir
  inputBinding:
    position: 0
    prefix: --unfiltered-breakpoint-evidence-dir
  type: Directory?
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
- doc: 'Write GFA representation of assemblies in fastq-dir.  Default value: false.
    Possible values: {true, false}'
  id: write_gfas
  inputBinding:
    position: 0
    prefix: --write-gfas
  type: boolean?
- doc: 'Disable all tool default read filters (WARNING: many tools will not function
    correctly without their default read filters on)  Default value: false. Possible
    values: {true, false}'
  id: disable_tool_default_read_filters
  inputBinding:
    position: 0
    prefix: --disable-tool-default-read-filters
  type: boolean?
- doc: 'Traverse assembly graph and produce contigs for all paths.  Default value:
    true. Possible values: {true, false}'
  id: expand_assembly_graph
  inputBinding:
    position: 0
    prefix: --expand-assembly-graph
  type: boolean?
- doc: 'Aggressively simplify local assemblies, ignoring small variants.  Default
    value: false. Possible values: {true, false}'
  id: pop_variant_bubbles
  inputBinding:
    position: 0
    prefix: --pop-variant-bubbles
  type: boolean?
- doc: 'Simplify local assemblies by removing contigs shadowed by similar contigs.  Default
    value: true. Possible values: {true, false}'
  id: remove_shadowed_contigs
  inputBinding:
    position: 0
    prefix: --remove-shadowed-contigs
  type: boolean?
- doc: 'display hidden arguments  Default value: false. Possible values: {true, false}'
  id: showHidden
  inputBinding:
    position: 0
    prefix: --showHidden
  type: boolean?
- doc: 'ZDropoff (see Bwa mem manual) for contig alignment.  Default value: 20.'
  id: z_dropoff
  inputBinding:
    position: 0
    prefix: --z-dropoff
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
