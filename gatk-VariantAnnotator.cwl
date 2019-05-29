#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- VariantAnnotator
class: CommandLineTool
cwlVersion: v1.0
id: gatk_VariantAnnotator
inputs:
- doc: The file to whcih variants should be written  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: File
- doc: A VCF file containing variants  Required.
  id: variant
  inputBinding:
    position: 0
    prefix: --variant
  type: string
- doc: 'If true, adds a PG tag to created SAM/BAM/CRAM files.  Default value: true.
    Possible values: {true, false}'
  id: add_output_sam_program_record
  inputBinding:
    position: 0
    prefix: --add-output-sam-program-record
  type: boolean?
- doc: 'If true, adds a command line header line to created VCF files.  Default value:
    true. Possible values: {true, false}'
  id: add_output_vcf_command_line
  inputBinding:
    position: 0
    prefix: --add-output-vcf-command-line
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
    may be specified 0 or more times. Default value: null. Any value allowed'
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
- doc: Size of the cloud-only prefetch buffer (in MB; 0 to disable). Defaults to
  id: cloud_index_prefetch_buffer
  inputBinding:
    position: 0
    prefix: --cloud-index-prefetch-buffer
  type: int?
- doc: ''
  id: '1.'
  inputBinding:
    position: 0
    prefix: '-1.'
  type: boolean
- doc: 'Size of the cloud-only prefetch buffer (in MB; 0 to disable).  Default value:
    40.'
  id: cloud_prefetch_buffer
  inputBinding:
    position: 0
    prefix: --cloud-prefetch-buffer
  type: int?
- doc: 'If true, create a BAM/CRAM index when writing a coordinate-sorted BAM/CRAM
    file.  Default value: true. Possible values: {true, false}'
  id: create_output_bam_index
  inputBinding:
    position: 0
    prefix: --create-output-bam-index
  type: boolean?
- doc: 'If true, create a MD5 digest for any BAM/SAM/CRAM file created  Default value:
    false. Possible values: {true, false}'
  id: create_output_bam_md5
  inputBinding:
    position: 0
    prefix: --create-output-bam-md5
  type: boolean?
- doc: 'If true, create a VCF index when writing a coordinate-sorted VCF file.  Default
    value: true. Possible values: {true, false}'
  id: create_output_variant_index
  inputBinding:
    position: 0
    prefix: --create-output-variant-index
  type: boolean?
- doc: 'If true, create a a MD5 digest any VCF file created.  Default value: false.
    Possible values: {true, false}'
  id: create_output_variant_md5
  inputBinding:
    position: 0
    prefix: --create-output-variant-md5
  type: boolean?
- doc: ':FeatureInput       dbSNP file  Default value: null.'
  id: dbsnp
  inputBinding:
    position: 0
    prefix: --dbsnp
  type: boolean?
- doc: "If true, don't cache bam indexes, this will reduce memory requirements but\
    \ may harm performance if many intervals are specified.  Caching is automatically\
    \ disabled if there are no intervals specified.  Default value: false. Possible\
    \ values: {true, false}"
  id: disable_bam_index_caching
  inputBinding:
    position: 0
    prefix: --disable-bam-index-caching
  type: boolean?
- doc: 'Read filters to be disabled before analysis  This argument may be specified
    0 or more times. Default value: null. Possible Values: {MappedReadFilter, NotDuplicateReadFilter,
    PassesVendorQualityCheckReadFilter, PrimaryLineReadFilter, WellformedReadFilter}'
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
- doc: 'One or more specific expressions to apply to variant calls  This argument
    may be specified 0 or more times. Default value: null.'
  id: expression
  inputBinding:
    position: 0
    prefix: --expression
  type: string?
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
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'BAM/SAM/CRAM file containing reads  This argument may be specified 0 or more
    times. Default value: null.'
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: string?
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
- doc: 'Lenient processing of VCF files  Default value: false. Possible values: {true,
    false}'
  id: lenient
  inputBinding:
    position: 0
    prefix: --lenient
  type: boolean?
- doc: 'Pedigree file for determining the population "founders"  Default value: null.'
  id: pedigree
  inputBinding:
    position: 0
    prefix: --pedigree
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
- doc: ':FeatureInput       External resource VCF file  This argument may be specified
    0 or more times. Default value: .'
  id: resource
  inputBinding:
    position: 0
    prefix: --resource
  type: null?
- doc: 'Check for allele concordances when using an external resource VCF file  Default
    value: false. Possible values: {true, false}'
  id: resource_allele_concordance
  inputBinding:
    position: 0
    prefix: --resource-allele-concordance
  type: boolean?
- doc: 'Output traversal statistics every time this many seconds elapse  Default value:
    10.0.'
  id: seconds_between_progress_updates
  inputBinding:
    position: 0
    prefix: --seconds-between-progress-updates
  type: double?
- doc: 'Use the given sequence dictionary as the master/canonical sequence dictionary.  Must
    be a .dict file.  Default value: null.'
  id: sequence_dictionary
  inputBinding:
    position: 0
    prefix: --sequence-dictionary
  type: string?
- doc: "If true, don't emit genotype fields when writing vcf file output.  Default\
    \ value: false. Possible values: {true, false}"
  id: sites_only_vcf_output
  inputBinding:
    position: 0
    prefix: --sites-only-vcf-output
  type: boolean?
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
- doc: ':FeatureInput           Comparison VCF file(s)  This argument may be specified
    0 or more times. Default value: .'
  id: comp
  inputBinding:
    position: 0
    prefix: --comp
  type: null?
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
- doc: 'Use all possible annotations (not for the faint of heart)  Default value:
    false. Possible values: {true, false}'
  id: enable_all_annotations
  inputBinding:
    position: 0
    prefix: --enable-all-annotations
  type: boolean?
- doc: 'display hidden arguments  Default value: false. Possible values: {true, false}'
  id: showHidden
  inputBinding:
    position: 0
    prefix: --showHidden
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
