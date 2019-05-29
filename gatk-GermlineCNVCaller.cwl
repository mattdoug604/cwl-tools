#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- GermlineCNVCaller
class: CommandLineTool
cwlVersion: v1.0
id: gatk_GermlineCNVCaller
inputs:
- doc: Input contig-ploidy calls directory (output of DetermineGermlineContigPloidy).  Required.
  id: contig_ploidy_calls
  inputBinding:
    position: 0
    prefix: --contig-ploidy-calls
  type: string
- doc: Input read-count files containing integer read counts in genomic intervals
    for all
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: File?
- doc: must be contained; if none are specified, then intervals must be identical
    and in the same order for all samples.  This argument must be specified at least
    once. Required.
  id: L
  inputBinding:
    position: 0
    prefix: -L
  type: boolean
- doc: Output directory.  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: string
- doc: Prefix for output filenames.  Required.
  id: output_prefix
  inputBinding:
    position: 0
    prefix: --output-prefix
  type: string
- doc: ':RunMode            Tool run-mode.  Required. Possible values: {COHORT, CASE}'
  id: run_mode
  inputBinding:
    position: 0
    prefix: --run-mode
  type: string
- doc: 'If copy-number-posterior-expectation-mode is set to HYBRID, CNV-active intervals
    determined at any time will be padded by this value (in the units of bp) in order
    to obtain the set of intervals on which copy number posterior expectation is performed
    exactly.  Default value: 50000.'
  id: active_class_padding_hybrid_mode
  inputBinding:
    position: 0
    prefix: --active-class-padding-hybrid-mode
  type: int?
- doc: 'Adamax optimizer first moment estimation forgetting factor.  Default value:
    0.9.'
  id: adamax_beta_1
  inputBinding:
    position: 0
    prefix: --adamax-beta-1
  type: double?
- doc: 'Adamax optimizer second moment estimation forgetting factor.  Default value:
    0.99.'
  id: adamax_beta_2
  inputBinding:
    position: 0
    prefix: --adamax-beta-2
  type: double?
- doc: 'Input annotated-interval file containing annotations for GC content in genomic
    intervals input should not be provided if an input denoising-model directory is
    given (the latter already contains the annotated-interval file).  Default value:
    null.'
  id: annotated_intervals
  inputBinding:
    position: 0
    prefix: --annotated-intervals
  type: File?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Admixing ratio of new and old called posteriors (between 0 and 1; larger values
    implies using more of the new posterior and less of the old posterior) after convergence.  Default
    value: 1.0.'
  id: caller_external_admixing_rate
  inputBinding:
    position: 0
    prefix: --caller-external-admixing-rate
  type: double?
- doc: 'Admixing ratio of new and old called posteriors (between 0 and 1; larger values
    implies using more of the new posterior and less of the old posterior) for internal
    convergence loops.  Default value: 0.75.'
  id: caller_internal_admixing_rate
  inputBinding:
    position: 0
    prefix: --caller-internal-admixing-rate
  type: double?
- doc: 'Maximum tolerated calling update size for convergence.  Default value: 0.001.'
  id: caller_update_convergence_threshold
  inputBinding:
    position: 0
    prefix: --caller-update-convergence-threshold
  type: double?
- doc: 'Coherence length of CNV-active and CNV-silent domains (in the units of bp).  Default
    value: 10000.0.'
  id: class_coherence_length
  inputBinding:
    position: 0
    prefix: --class-coherence-length
  type: double?
- doc: 'Coherence length of CNV events (in the units of bp).  Default value: 10000.0.'
  id: cnv_coherence_length
  inputBinding:
    position: 0
    prefix: --cnv-coherence-length
  type: double?
- doc: 'Averaging window for calculating training signal-to-noise ratio (SNR) for
    convergence checking.  Default value: 500.'
  id: convergence_snr_averaging_window
  inputBinding:
    position: 0
    prefix: --convergence-snr-averaging-window
  type: int?
- doc: 'The number of ADVI iterations during which the SNR is required to stay below
    the set threshold for convergence.  Default value: 10.'
  id: convergence_snr_countdown_window
  inputBinding:
    position: 0
    prefix: --convergence-snr-countdown-window
  type: int
- doc: 'The SNR threshold to be reached before triggering the convergence countdown.  Default
    value: 0.1.'
  id: convergence_snr_trigger_threshold
  inputBinding:
    position: 0
    prefix: --convergence-snr-trigger-threshold
  type: double?
- doc: ':CopyNumberPosteriorExpectationMode The strategy for calculating copy number
    posterior expectations in the coverage denoising model.  Default value: HYBRID.
    Possible values: {MAP, EXACT, HYBRID}'
  id: copy_number_posterior_expectation_mode
  inputBinding:
    position: 0
    prefix: --copy-number-posterior-expectation-mode
  type: string?
- doc: 'Precision of read depth pinning to its global value.  Default value: 10000.0.'
  id: depth_correction_tau
  inputBinding:
    position: 0
    prefix: --depth-correction-tau
  type: double?
- doc: '(advanced) Disable annealing.  Default value: false. Possible values: {true,
    false}'
  id: disable_annealing
  inputBinding:
    position: 0
    prefix: --disable-annealing
  type: boolean?
- doc: '(advanced) Disable caller.  Default value: false. Possible values: {true,
    false}'
  id: disable_caller
  inputBinding:
    position: 0
    prefix: --disable-caller
  type: boolean?
- doc: '(advanced) Disable sampler.  Default value: false. Possible values: {true,
    false}'
  id: disable_sampler
  inputBinding:
    position: 0
    prefix: --disable-sampler
  type: boolean?
- doc: 'Enable discovery of bias factors.  Default value: true. Possible values: {true,
    false}'
  id: enable_bias_factors
  inputBinding:
    position: 0
    prefix: --enable-bias-factors
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
- doc: 'Prior standard deviation of the GC curve from flat.  Default value: 1.0.'
  id: gc_curve_standard_deviation
  inputBinding:
    position: 0
    prefix: --gc-curve-standard-deviation
  type: double?
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
- doc: 'Initial value of ARD prior precisions relative to the scale of interval-specific
    unexplained variance.  Default value: 0.1.'
  id: init_ard_rel_unexplained_variance
  inputBinding:
    position: 0
    prefix: --init-ard-rel-unexplained-variance
  type: double?
- doc: 'Initial temperature (for DA-ADVI).  Default value: 1.5.'
  id: initial_temperature
  inputBinding:
    position: 0
    prefix: --initial-temperature
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
- doc: 'Typical scale of interval-specific unexplained variance.  Default value: 0.001.'
  id: interval_psi_scale
  inputBinding:
    position: 0
    prefix: --interval-psi-scale
  type: double?
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
- doc: 'Adamax optimizer learning rate.  Default value: 0.01.'
  id: learning_rate
  inputBinding:
    position: 0
    prefix: --learning-rate
  type: double?
- doc: 'Log emission samples drawn per round of sampling.  Default value: 50.'
  id: log_emission_samples_per_round
  inputBinding:
    position: 0
    prefix: --log-emission-samples-per-round
  type: int?
- doc: 'Maximum tolerated median relative error in log emission sampling.  Default
    value: 0.005.'
  id: log_emission_sampling_median_rel_error
  inputBinding:
    position: 0
    prefix: --log-emission-sampling-median-rel-error
  type: double?
- doc: 'Log emission maximum sampling rounds.  Default value: 10.'
  id: log_emission_sampling_rounds
  inputBinding:
    position: 0
    prefix: --log-emission-sampling-rounds
  type: int?
- doc: 'Standard deviation of log mean bias.  Default value: 0.1.'
  id: log_mean_bias_standard_deviation
  inputBinding:
    position: 0
    prefix: --log-mean-bias-standard-deviation
  type: double?
- doc: 'Typical mapping error rate.  Default value: 0.01.'
  id: mapping_error_rate
  inputBinding:
    position: 0
    prefix: --mapping-error-rate
  type: double?
- doc: 'Maximum ADVI iterations in the first epoch.  Default value: 5000.'
  id: max_advi_iter_first_epoch
  inputBinding:
    position: 0
    prefix: --max-advi-iter-first-epoch
  type: int?
- doc: 'Maximum ADVI iterations in subsequent epochs.  Default value: 200.'
  id: max_advi_iter_subsequent_epochs
  inputBinding:
    position: 0
    prefix: --max-advi-iter-subsequent-epochs
  type: int?
- doc: 'Maximum number of bias factors.  Default value: 5.'
  id: max_bias_factors
  inputBinding:
    position: 0
    prefix: --max-bias-factors
  type: int?
- doc: 'Maximum number of internal self-consistency iterations within each calling
    step.  Default value: 10.'
  id: max_calling_iters
  inputBinding:
    position: 0
    prefix: --max-calling-iters
  type: int?
- doc: 'Highest allowed copy-number state.  Default value: 5.'
  id: max_copy_number
  inputBinding:
    position: 0
    prefix: --max-copy-number
  type: int?
- doc: 'Maximum number of training epochs.  Default value: 50.'
  id: max_training_epochs
  inputBinding:
    position: 0
    prefix: --max-training-epochs
  type: int?
- doc: 'Minimum number of training epochs.  Default value: 10.'
  id: min_training_epochs
  inputBinding:
    position: 0
    prefix: --min-training-epochs
  type: int?
- doc: 'Input denoising-model directory. In the COHORT mode, this argument is optional
    and if provided,a new model will be built using this input model to initialize.
    In the CASE mode, the denoising model parameters set to this input model and therefore,
    this argument is required.  Default value: null.'
  id: model
  inputBinding:
    position: 0
    prefix: --model
  type: string
- doc: 'Number of bins used to represent the GC-bias curves.  Default value: 20.'
  id: num_gc_bins
  inputBinding:
    position: 0
    prefix: --num-gc-bins
  type: int?
- doc: 'Number of thermal ADVI iterations (for DA-ADVI).  Default value: 2500.'
  id: num_thermal_advi_iters
  inputBinding:
    position: 0
    prefix: --num-thermal-advi-iters
  type: int?
- doc: 'Prior probability of treating an interval as CNV-active (in a CNV-active domains,
    all copy-number states are equally likely to be called).  Default value: 0.01.'
  id: p_active
  inputBinding:
    position: 0
    prefix: --p-active
  type: double?
- doc: 'Total prior probability of alternative copy-number states (the reference copy-number
    is set to the contig integer ploidy)  Default value: 1.0E-6.'
  id: p_alt
  inputBinding:
    position: 0
    prefix: --p-alt
  type: double?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Typical scale of sample-specific correction to the unexplained variance.  Default
    value: 1.0E-4.'
  id: sample_psi_scale
  inputBinding:
    position: 0
    prefix: --sample-psi-scale
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
