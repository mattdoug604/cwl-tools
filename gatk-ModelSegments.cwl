#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- ModelSegments
class: CommandLineTool
cwlVersion: v1.0
id: gatk_ModelSegments
inputs:
- doc: Output directory.  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: string
- doc: Prefix for output files.  Required.
  id: output_prefix
  inputBinding:
    position: 0
    prefix: --output-prefix
  type: string
- doc: 'Input file containing allelic counts (output of CollectAllelicCounts).  Default
    value: .'
  id: allelic_counts
  inputBinding:
    position: 0
    prefix: --allelic-counts
  type: null?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Input file containing denoised copy ratios (output of DenoiseReadCounts).  Default
    value: .'
  id: denoised_copy_ratios
  inputBinding:
    position: 0
    prefix: --denoised-copy-ratios
  type: null?
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
- doc: 'Maximum base-error rate for genotyping and filtering homozygous allelic counts,
    if available.  The likelihood for an allelic count to be generated from a homozygous
    site will be integrated from zero base-error rate up to this value.  Decreasing
    this value will increase the number of sites assumed to be heterozygous for modeling.  Default
    value: 0.05.'
  id: genotyping_base_error_rate
  inputBinding:
    position: 0
    prefix: --genotyping-base-error-rate
  type: double?
- doc: Log-ratio threshold for genotyping and filtering homozygous allelic counts,
    if available. Increasing this value will increase the number of sites assumed
    to be heterozygous for
  id: genotyping_homozygous_log_ratio_threshold
  inputBinding:
    position: 0
    prefix: --genotyping-homozygous-log-ratio-threshold
  type: double?
- doc: ''
  id: 10.0.
  inputBinding:
    position: 0
    prefix: -10.0.
  type: boolean
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'Dimension of the kernel approximation.  A subsample containing this number
    of data points will be used to construct the approximation for each chromosome.  If
    the total number of data points in a chromosome is greater than this number, then
    all data points in the chromosome will be used.  Time complexity scales quadratically
    and space complexity scales linearly with this parameter.  Default value: 100.'
  id: kernel_approximation_dimension
  inputBinding:
    position: 0
    prefix: --kernel-approximation-dimension
  type: int?
- doc: 'Relative scaling S of the kernel K_AF for allele-fraction segmentation to
    the kernel K_CR for copy-ratio segmentation.  If multidimensional segmentation
    is performed, the total kernel used will be K_CR + S * K_AF.  Default value: 1.0.'
  id: kernel_scaling_allele_fraction
  inputBinding:
    position: 0
    prefix: --kernel-scaling-allele-fraction
  type: double?
- doc: 'Variance of Gaussian kernel for allele-fraction segmentation, if performed.  If
    zero, a linear kernel will be used.  Default value: 0.025.'
  id: kernel_variance_allele_fraction
  inputBinding:
    position: 0
    prefix: --kernel-variance-allele-fraction
  type: double?
- doc: 'Variance of Gaussian kernel for copy-ratio segmentation, if performed.  If
    zero, a linear kernel will be used.  Default value: 0.0.'
  id: kernel_variance_copy_ratio
  inputBinding:
    position: 0
    prefix: --kernel-variance-copy-ratio
  type: double?
- doc: 'Maximum number of segments allowed per chromosome.  Default value: 1000.'
  id: maximum_number_of_segments_per_chromosome
  inputBinding:
    position: 0
    prefix: --maximum-number-of-segments-per-chromosome
  type: int?
- doc: 'Maximum number of iterations allowed for segmentation smoothing.  Default
    value: 25.'
  id: maximum_number_of_smoothing_iterations
  inputBinding:
    position: 0
    prefix: --maximum-number-of-smoothing-iterations
  type: int?
- doc: 'Minimum total count for filtering allelic counts, if available.  Default value:
    30.'
  id: minimum_total_allele_count
  inputBinding:
    position: 0
    prefix: --minimum-total-allele-count
  type: int?
- doc: 'Alpha hyperparameter for the 4-parameter beta-distribution prior on segment
    minor-allele fraction. The prior for the minor-allele fraction f in each segment
    is assumed to be Beta(alpha, 1, 0, 1/2). Increasing this hyperparameter will reduce
    the effect of reference bias at the expense of sensitivity.  Default value: 25.0.'
  id: minor_allele_fraction_prior_alpha
  inputBinding:
    position: 0
    prefix: --minor-allele-fraction-prior-alpha
  type: double?
- doc: 'Input file containing allelic counts for a matched normal (output of CollectAllelicCounts).  Default
    value: null.'
  id: normal_allelic_counts
  inputBinding:
    position: 0
    prefix: --normal-allelic-counts
  type: File?
- doc: 'Number of burn-in samples to discard for allele-fraction model.  Default value:
    50.'
  id: number_of_burn_in_samples_allele_fraction
  inputBinding:
    position: 0
    prefix: --number-of-burn-in-samples-allele-fraction
  type: int?
- doc: 'Number of burn-in samples to discard for copy-ratio model.  Default value:
    50.'
  id: number_of_burn_in_samples_copy_ratio
  inputBinding:
    position: 0
    prefix: --number-of-burn-in-samples-copy-ratio
  type: int?
- doc: 'Factor A for the penalty on the number of changepoints per chromosome for
    segmentation. Adds a penalty of the form A * C * [1 + log (N / C)], where C is
    the number of changepoints in the chromosome, to the cost function for each chromosome.  Must
    be non-negative.  Default value: 1.0.'
  id: number_of_changepoints_penalty_factor
  inputBinding:
    position: 0
    prefix: --number-of-changepoints-penalty-factor
  type: double?
- doc: 'Total number of MCMC samples for allele-fraction model.  Default value: 100.'
  id: number_of_samples_allele_fraction
  inputBinding:
    position: 0
    prefix: --number-of-samples-allele-fraction
  type: int?
- doc: 'Total number of MCMC samples for copy-ratio model.  Default value: 100.'
  id: number_of_samples_copy_ratio
  inputBinding:
    position: 0
    prefix: --number-of-samples-copy-ratio
  type: int?
- doc: 'Number of segmentation-smoothing iterations per MCMC model refit. (Increasing
    this will decrease runtime, but the final number of segments may be higher. Setting
    this to 0 will completely disable model refitting between iterations.)  Default
    value: 0.'
  id: number_of_smoothing_iterations_per_fit
  inputBinding:
    position: 0
    prefix: --number-of-smoothing-iterations-per-fit
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Number of 10% equal-tailed credible-interval widths to use for allele-fraction
    segmentation smoothing.  Default value: 2.0.'
  id: smoothing_credible_interval_threshold_allele_fraction
  inputBinding:
    position: 0
    prefix: --smoothing-credible-interval-threshold-allele-fraction
  type: double?
- doc: 'Number of 10% equal-tailed credible-interval widths to use for copy-ratio
    segmentation smoothing.  Default value: 2.0.'
  id: smoothing_credible_interval_threshold_copy_ratio
  inputBinding:
    position: 0
    prefix: --smoothing-credible-interval-threshold-copy-ratio
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
- doc: 'Window sizes to use for calculating local changepoint costs.  For each window
    size, the cost for each data point to be a changepoint will be calculated assuming
    that the point demarcates two adjacent segments of that size.  Including small
    (large) window sizes will increase sensitivity to small (large) events.  Duplicate
    values will be ignored.  This argument may be specified 0 or more times. Default
    value: [8, 16, 32, 64, 128, 256].'
  id: window_size
  inputBinding:
    position: 0
    prefix: --window-size
  type: string?
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
