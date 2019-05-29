#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- HaplotypeCallerSpark
class: CommandLineTool
cwlVersion: v1.0
id: gatk_HaplotypeCallerSpark
inputs:
- doc: BAM/SAM/CRAM file containing reads  This argument must be specified at least
    once. Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: string
- doc: Single file to which variants should be written  Required.
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
- doc: 'is GENOTYPE_GIVEN_ALLELES Default value: null.'
  id: genotyping_mode
  inputBinding:
    position: 0
    prefix: --genotyping_mode
  type: boolean?
- doc: 'If provided, we will annotate records with the number of alternate alleles
    that were discovered (but not necessarily genotyped) at a given site  Default
    value: false. Possible values: {true, false}'
  id: annotate_with_num_discovered_alleles
  inputBinding:
    position: 0
    prefix: --annotate-with-num-discovered-alleles
  type: boolean?
- doc: 'One or more specific annotations to add to variant calls  This argument may
    be specified 0 or more times. Default value: null. Possible Values: {AlleleFraction,
    AS_BaseQualityRankSumTest, AS_FisherStrand, AS_InbreedingCoeff, AS_MappingQualityRankSumTest,
    AS_QualByDepth, AS_ReadPosRankSumTest, AS_RMSMappingQuality, AS_StrandOddsRatio,
    BaseQuality, BaseQualityRankSumTest, ChromosomeCounts, ClippingRankSumTest, Coverage,
    DepthPerAlleleBySample, DepthPerSampleHC, ExcessHet, FisherStrand, FragmentLength,
    GenotypeSummaries, InbreedingCoeff, LikelihoodRankSumTest, MappingQuality, MappingQualityRankSumTest,
    MappingQualityZero, OxoGReadCounts, PossibleDeNovo, QualByDepth, ReadOrientationArtifact,
    ReadPosition, ReadPosRankSumTest, ReferenceBases, RMSMappingQuality, SampleList,
    StrandArtifact, StrandBiasBySample, StrandOddsRatio, TandemRepeat, UniqueAltReadCount}'
  id: annotation
  inputBinding:
    position: 0
    prefix: --annotation
  type: string?
- doc: 'One or more groups of annotations to apply to variant calls  This argument
    may be specified 0 or more times. Default value: null. Possible Values: {AS_StandardAnnotation,
    OrientationBiasMixtureModelAnnotation, ReducibleAnnotation, StandardAnnotation,
    StandardHCAnnotation, StandardMutectAnnotation}'
  id: annotation_group
  inputBinding:
    position: 0
    prefix: --annotation-group
  type: string?
- doc: 'One or more specific annotations to exclude from variant calls  This argument
    may be specified 0 or more times. Default value: null. Possible Values: {BaseQualityRankSumTest,
    ChromosomeCounts, Coverage, DepthPerAlleleBySample, DepthPerSampleHC, ExcessHet,
    FisherStrand, InbreedingCoeff, MappingQualityRankSumTest, QualByDepth, ReadPosRankSumTest,
    RMSMappingQuality, StrandOddsRatio}'
  id: annotations_to_exclude
  inputBinding:
    position: 0
    prefix: --annotations-to-exclude
  type: string?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Number of additional bases of context to include around each assembly region  Default
    value: 100.'
  id: assembly_region_padding
  inputBinding:
    position: 0
    prefix: --assembly-region-padding
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
- doc: ':Byte Base qualities below this threshold will be reduced to the minimum (6)  Default
    value: 18.'
  id: base_quality_score_threshold
  inputBinding:
    position: 0
    prefix: --base-quality-score-threshold
  type: boolean?
- doc: 'spark properties to set on the spark context in the format <property>=<value>  This
    argument may be specified 0 or more times. Default value: null.'
  id: conf
  inputBinding:
    position: 0
    prefix: --conf
  type: string?
- doc: 'Fraction of contamination in sequencing data (for all samples) to aggressively
    remove Default value: 0.0.'
  id: contamination_fraction_to_filter
  inputBinding:
    position: 0
    prefix: --contamination-fraction-to-filter
  type: double?
- doc: ':FeatureInput       dbSNP file  Default value: null.'
  id: dbsnp
  inputBinding:
    position: 0
    prefix: --dbsnp
  type: boolean?
- doc: 'Read filters to be disabled before analysis  This argument may be specified
    0 or more times. Default value: null. Possible Values: {GoodCigarReadFilter, MappedReadFilter,
    MappingQualityAvailableReadFilter, MappingQualityReadFilter, NonZeroReferenceLengthAlignmentReadFilter,
    NotDuplicateReadFilter, NotSecondaryAlignmentReadFilter, PassesVendorQualityCheckReadFilter,
    WellformedReadFilter}'
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
- doc: 'Samples representing the population "founders"  This argument may be specified
    0 or more times. Default value: null.'
  id: founder_id
  inputBinding:
    position: 0
    prefix: --founder-id
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
- doc: 'Write debug assembly graph information to this file  Default value: null.'
  id: graph_output
  inputBinding:
    position: 0
    prefix: --graph-output
  type: string?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'Heterozygosity value used to compute prior likelihoods for any locus.  See
    the GATKDocs for full details on the meaning of this population genetics concept  Default
    value: 0.001.'
  id: heterozygosity
  inputBinding:
    position: 0
    prefix: --heterozygosity
  type: double?
- doc: 'Standard deviation of heterozygosity for SNP and indel calling.  Default value:
    0.01.'
  id: heterozygosity_stdev
  inputBinding:
    position: 0
    prefix: --heterozygosity-stdev
  type: double?
- doc: 'Heterozygosity for indel calling.  See the GATKDocs for heterozygosity for
    full details on the meaning of this population genetics concept  Default value:
    1.25E-4.'
  id: indel_heterozygosity
  inputBinding:
    position: 0
    prefix: --indel-heterozygosity
  type: double?
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
- doc: 'Maximum size of an assembly region  Default value: 300.'
  id: max_assembly_region_size
  inputBinding:
    position: 0
    prefix: --max-assembly-region-size
  type: int?
- doc: 'Maximum number of reads to retain per alignment start position. Reads above
    this threshold will be downsampled. Set to 0 to disable.  Default value: 50.'
  id: max_reads_per_alignment_start
  inputBinding:
    position: 0
    prefix: --max-reads-per-alignment-start
  type: int?
- doc: 'Minimum size of an assembly region  Default value: 50.'
  id: min_assembly_region_size
  inputBinding:
    position: 0
    prefix: --min-assembly-region-size
  type: int?
- doc: ':Byte Minimum base quality required to consider a base for calling  Default
    value: 10.'
  id: min_base_quality_score
  inputBinding:
    position: 0
    prefix: --min-base-quality-score
  type: boolean
- doc: 'How many threads should a native pairHMM implementation use  Default value:
    4.'
  id: native_pair_hmm_threads
  inputBinding:
    position: 0
    prefix: --native-pair-hmm-threads
  type: int?
- doc: 'use double precision in the native pairHmm. This is slower but matches the
    java implementation better  Default value: false. Possible values: {true, false}'
  id: native_pair_hmm_use_double_precision
  inputBinding:
    position: 0
    prefix: --native-pair-hmm-use-double-precision
  type: boolean?
- doc: 'For tools that shuffle data or write an output, sets the number of reducers.
    Defaults to 0, which gives one partition per 10MB of input.  Default value: 0.'
  id: num_reducers
  inputBinding:
    position: 0
    prefix: --num-reducers
  type: int?
- doc: 'Number of hom-ref genotypes to infer at sites not present in a panel  Default
    value: 0.'
  id: num_reference_samples_if_no_call
  inputBinding:
    position: 0
    prefix: --num-reference-samples-if-no-call
  type: int?
- doc: ':OutputMode      Specifies which type of calls we should output  Default value:
    EMIT_VARIANTS_ONLY. Possible values: {EMIT_VARIANTS_ONLY, EMIT_ALL_CONFIDENT_SITES,
    EMIT_ALL_SITES}'
  id: output_mode
  inputBinding:
    position: 0
    prefix: --output-mode
  type: string?
- doc: 'when writing a bam, in single sharded mode this directory to write the temporary
    intermediate output shards, if not specified .parts/ will be used  Default value:
    null. Cannot be used in conjuction with argument(s) shardedOutput'
  id: output_shard_tmp_dir
  inputBinding:
    position: 0
    prefix: --output-shard-tmp-dir
  type: string?
- doc: 'Pedigree file for determining the population "founders"  Default value: null.'
  id: pedigree
  inputBinding:
    position: 0
    prefix: --pedigree
  type: File?
- doc: ':FeatureInput Callset to use in calculating genotype priors  Default value:
    null.'
  id: population_callset
  inputBinding:
    position: 0
    prefix: --population-callset
  type: boolean?
- doc: 'Name of the program running  Default value: null.'
  id: program_name
  inputBinding:
    position: 0
    prefix: --program-name
  type: string?
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
- doc: 'Each read shard has this many bases of extra context on each side. Read shards
    must have as much or more padding than assembly regions.  Default value: 100.'
  id: read_shard_padding
  inputBinding:
    position: 0
    prefix: --read-shard-padding
  type: int?
- doc: 'Maximum size of each read shard, in bases. For good performance, this should
    be much larger than the maximum assembly region size.  Default value: 5000.'
  id: read_shard_size
  inputBinding:
    position: 0
    prefix: --read-shard-size
  type: int?
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
- doc: 'This argument is deprecated since version 3.3  Default value: false. Possible
    values: {true, false}'
  id: recover_dangling_heads
  inputBinding:
    position: 0
    prefix: --recover-dangling-heads
  type: boolean?
- doc: 'Name of single sample to use from a multi-sample bam  Default value: null.'
  id: sample_name
  inputBinding:
    position: 0
    prefix: --sample-name
  type: string?
- doc: 'Ploidy (number of chromosomes) per sample. For pooled data, set to (Number
    of samples in each pool * Sample Ploidy).  Default value: 2.'
  id: sample_ploidy
  inputBinding:
    position: 0
    prefix: --sample-ploidy
  type: int?
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
- doc: 'The minimum phred-scaled confidence threshold at which variants should be
    called  Default value: 10.0.'
  id: standard_min_confidence_threshold_for_calling
  inputBinding:
    position: 0
    prefix: --standard-min-confidence-threshold-for-calling
  type: double?
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
- doc: 'If provided, we will use the new AF model instead of the so-called exact model  Default
    value: false. Possible values: {true, false}'
  id: use_new_qual_calculator
  inputBinding:
    position: 0
    prefix: --use-new-qual-calculator
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
- doc: 'Minimum probability for a locus to be considered active.  Default value: 0.002.'
  id: active_probability_threshold
  inputBinding:
    position: 0
    prefix: --active-probability-threshold
  type: double?
- doc: 'Annotate all sites with PLs  Default value: false. Possible values: {true,
    false}'
  id: all_site_pls
  inputBinding:
    position: 0
    prefix: --all-site-pls
  type: boolean?
- doc: 'Allow graphs that have non-unique kmers in the reference  Default value: false.
    Possible values: {true, false}'
  id: allow_non_unique_kmers_in_ref
  inputBinding:
    position: 0
    prefix: --allow-non-unique-kmers-in-ref
  type: boolean?
- doc: 'to which assembled haplotypes should be written  Default value: null.'
  id: bam_output
  inputBinding:
    position: 0
    prefix: --bam-output
  type: File?
- doc: ':WriterType  Which haplotypes should be written to the BAM  Default value:
    CALLED_HAPLOTYPES. Possible values: {ALL_POSSIBLE_HAPLOTYPES, CALLED_HAPLOTYPES}'
  id: bam_writer_type
  inputBinding:
    position: 0
    prefix: --bam-writer-type
  type: string?
- doc: ':FeatureInput     Comparison VCF file(s)  This argument may be specified 0
    or more times. Default value: .'
  id: comp
  inputBinding:
    position: 0
    prefix: --comp
  type: null?
- doc: '1000G consensus mode  Default value: false. Possible values: {true, false}'
  id: consensus
  inputBinding:
    position: 0
    prefix: --consensus
  type: boolean?
- doc: 'Tab-separated File containing fraction of contamination in sequencing data
    (per sample) to aggressively remove. Format should be "<SampleID><TAB><Contamination>"
    (Contamination is ) per line; No header.  Default value: null.'
  id: contamination_fraction_per_sample_file
  inputBinding:
    position: 0
    prefix: --contamination-fraction-per-sample-file
  type: double?
- doc: 'Print out very verbose debug information about each triggering active region  Default
    value: false. Possible values: {true, false}'
  id: debug
  inputBinding:
    position: 0
    prefix: --debug
  type: boolean?
- doc: "Don't skip calculations in ActiveRegions with no variants  Default value:\
    \ false. Possible values: {true, false}"
  id: disable_optimizations
  inputBinding:
    position: 0
    prefix: --disable-optimizations
  type: boolean?
- doc: 'Disable all tool default annotations  Default value: false. Possible values:
    {true, false}'
  id: disable_tool_default_annotations
  inputBinding:
    position: 0
    prefix: --disable-tool-default-annotations
  type: boolean?
- doc: 'Disable all tool default read filters (WARNING: many tools will not function
    correctly without their default read filters on)  Default value: false. Possible
    values: {true, false}'
  id: disable_tool_default_read_filters
  inputBinding:
    position: 0
    prefix: --disable-tool-default-read-filters
  type: boolean?
- doc: 'Disable physical phasing  Default value: false. Possible values: {true, false}'
  id: do_not_run_physical_phasing
  inputBinding:
    position: 0
    prefix: --do-not-run-physical-phasing
  type: boolean?
- doc: 'Disable iterating over kmer sizes when graph cycles are detected  Default
    value: false. Possible values: {true, false}'
  id: dont_increase_kmer_sizes_for_cycles
  inputBinding:
    position: 0
    prefix: --dont-increase-kmer-sizes-for-cycles
  type: boolean?
- doc: 'If specified, we will not trim down the active region from the full region
    (active + extension) to just the active interval for genotyping  Default value:
    false. Possible values: {true, false}'
  id: dont_trim_active_regions
  inputBinding:
    position: 0
    prefix: --dont-trim-active-regions
  type: boolean?
- doc: 'Do not analyze soft clipped bases in the reads  Default value: false. Possible
    values: {true, false}'
  id: dont_use_soft_clipped_bases
  inputBinding:
    position: 0
    prefix: --dont-use-soft-clipped-bases
  type: boolean?
- doc: ':ReferenceConfidenceMode Mode for emitting reference confidence scores  Default
    value: NONE. Possible values: , BP_RESOLUTION, GVCF}'
  id: emit_ref_confidence
  inputBinding:
    position: 0
    prefix: --emit-ref-confidence
  type: null?
- doc: 'Use all possible annotations (not for the faint of heart)  Default value:
    false. Possible values: {true, false}'
  id: enable_all_annotations
  inputBinding:
    position: 0
    prefix: --enable-all-annotations
  type: boolean?
- doc: 'GENOTYPE_GIVEN_ALLELES  Default value: false. Possible values: {true, false}'
  id: genotype_filtered_alleles
  inputBinding:
    position: 0
    prefix: --genotype-filtered-alleles
  type: boolean?
- doc: 'Exclusive upper bounds for reference confidence GQ bands (must be in [1, 100]
    and specified in increasing order)  This argument may be specified 0 or more times.
    Default value: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
    19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38,
    39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58,
    59, 60, 70, 80, 90, 99].'
  id: gvcf_gq_bands
  inputBinding:
    position: 0
    prefix: --gvcf-gq-bands
  type: string?
- doc: 'The size of an indel to check for in the reference model  Default value: 10.'
  id: indel_size_to_eliminate_in_ref_model
  inputBinding:
    position: 0
    prefix: --indel-size-to-eliminate-in-ref-model
  type: int?
- doc: 'Input prior for calls  This argument may be specified 0 or more times. Default
    value: .'
  id: input_prior
  inputBinding:
    position: 0
    prefix: --input-prior
  type: null?
- doc: 'Kmer size to use in the read threading assembler  This argument may be specified
    0 or more times. Default value: [10, 25].'
  id: kmer_size
  inputBinding:
    position: 0
    prefix: --kmer-size
  type: string?
- doc: 'Maximum number of alternate alleles to genotype  Default value: 6.'
  id: max_alternate_alleles
  inputBinding:
    position: 0
    prefix: --max-alternate-alleles
  type: int?
- doc: 'Maximum number of genotypes to consider at any site  Default value: 1024.'
  id: max_genotype_count
  inputBinding:
    position: 0
    prefix: --max-genotype-count
  type: int?
- doc: 'Two or more phased substitutions separated by this distance or less are merged
    into MNPs. WARNING: When used in GVCF mode, resulting GVCFs cannot be joint-genotyped.  Default
    value: 0.'
  id: max_mnp_distance
  inputBinding:
    position: 0
    prefix: --max-mnp-distance
  type: int?
- doc: 'Maximum number of haplotypes to consider for your population  Default value:
    128.'
  id: max_num_haplotypes_in_population
  inputBinding:
    position: 0
    prefix: --max-num-haplotypes-in-population
  type: int?
- doc: 'Upper limit on how many bases away probability mass can be moved around when
    calculating the boundaries between active and inactive assembly regions  Default
    value: 50.'
  id: max_prob_propagation_distance
  inputBinding:
    position: 0
    prefix: --max-prob-propagation-distance
  type: int?
- doc: 'Minimum length of a dangling branch to attempt recovery  Default value: 4.'
  id: min_dangling_branch_length
  inputBinding:
    position: 0
    prefix: --min-dangling-branch-length
  type: int?
- doc: 'Minimum support to not prune paths in the graph  Default value: 2.'
  id: min_pruning
  inputBinding:
    position: 0
    prefix: --min-pruning
  type: int?
- doc: 'Number of samples that must pass the minPruning threshold  Default value:
    1.'
  id: num_pruning_samples
  inputBinding:
    position: 0
    prefix: --num-pruning-samples
  type: int?
- doc: 'Flat gap continuation penalty for use in the Pair HMM  Default value: 10.'
  id: pair_hmm_gap_continuation_penalty
  inputBinding:
    position: 0
    prefix: --pair-hmm-gap-continuation-penalty
  type: int?
- doc: ':Implementation The PairHMM implementation to use for genotype likelihood
    calculations  Default value: FASTEST_AVAILABLE. Possible values: {EXACT, ORIGINAL,
    LOGLESS_CACHING, AVX_LOGLESS_CACHING, AVX_LOGLESS_CACHING_OMP, EXPERIMENTAL_FPGA_LOGLESS_CACHING,
    FASTEST_AVAILABLE}'
  id: pair_hmm_implementation
  inputBinding:
    position: 0
    prefix: --pair-hmm-implementation
  type: string?
- doc: ':PCRErrorModel The PCR indel model to use  Default value: CONSERVATIVE. Possible
    values: {NONE, HOSTILE, AGGRESSIVE, CONSERVATIVE}'
  id: pcr_indel_model
  inputBinding:
    position: 0
    prefix: --pcr-indel-model
  type: string?
- doc: 'The global assumed mismapping rate for reads  Default value: 45.'
  id: phred_scaled_global_read_mismapping_rate
  inputBinding:
    position: 0
    prefix: --phred-scaled-global-read-mismapping-rate
  type: int?
- doc: 'display hidden arguments  Default value: false. Possible values: {true, false}'
  id: showHidden
  inputBinding:
    position: 0
    prefix: --showHidden
  type: boolean?
- doc: ':Implementation Which Smith-Waterman implementation to use, generally FASTEST_AVAILABLE
    is the right choice  Default value: JAVA. Possible values: {FASTEST_AVAILABLE,
    AVX_ENABLED, JAVA}'
  id: smith_waterman
  inputBinding:
    position: 0
    prefix: --smith-waterman
  type: string?
- doc: 'Use additional trigger on variants found in an external alleles file  Default
    value: false. Possible values: {true, false}'
  id: use_alleles_trigger
  inputBinding:
    position: 0
    prefix: --use-alleles-trigger
  type: boolean?
- doc: 'Use the contamination-filtered read maps for the purposes of annotating variants  Default
    value: false. Possible values: {true, false}'
  id: use_filtered_reads_for_annotations
  inputBinding:
    position: 0
    prefix: --use-filtered-reads-for-annotations
  type: boolean?
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
- doc: 'Minimum mapping quality to keep (inclusive)  Default value: 20.'
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
