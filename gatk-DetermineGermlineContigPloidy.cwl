#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- DetermineGermlineContigPloidy
class: CommandLineTool
cwlVersion: v1.0
id: gatk_DetermineGermlineContigPloidy
inputs:
- doc: Input read-count files containing integer read counts in genomic intervals
    for all samples.  Intervals must be identical and in the same order for all samples.  If
    only a single sample is specified, an input ploidy-model directory must also be
    specified. This argument must be specified at least once. Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: File
- doc: Output directory for sample contig-ploidy calls and the contig-ploidy model
    parameters for future use.  Required.
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
- doc: 'Adamax optimizer first moment estimation forgetting factor.  Default value:
    0.9.'
  id: adamax_beta_1
  inputBinding:
    position: 0
    prefix: --adamax-beta-1
  type: double?
- doc: 'Adamax optimizer second moment estimation forgetting factor.  Default value:
    0.999.'
  id: adamax_beta_2
  inputBinding:
    position: 0
    prefix: --adamax-beta-2
  type: double?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Admixing ratio of new and old called posteriors (between 0 and 1; larger values
    implies using more of the new posterior and less of the old posterior) after convergence.  Default
    value: 0.75.'
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
- doc: 'Input file specifying contig-ploidy priors.  If only a single sample is specified,
    this input should not be provided.  If multiple samples are specified, this input
    is required. Default value: null.'
  id: contig_ploidy_priors
  inputBinding:
    position: 0
    prefix: --contig-ploidy-priors
  type: File
- doc: 'Averaging window for calculating training signal-to-noise ratio (SNR) for
    convergence checking.  Default value: 5000.'
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
- doc: 'Prior scale of contig coverage unexplained variance.  If a single sample is
    provided, this input will be ignored.  Default value: 0.001.'
  id: global_psi_scale
  inputBinding:
    position: 0
    prefix: --global-psi-scale
  type: double?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'Initial temperature (for DA-ADVI).  Default value: 2.0.'
  id: initial_temperature
  inputBinding:
    position: 0
    prefix: --initial-temperature
  type: double?
- doc: 'Adamax optimizer learning rate.  Default value: 0.05.'
  id: learning_rate
  inputBinding:
    position: 0
    prefix: --learning-rate
  type: double?
- doc: 'Log emission samples drawn per round of sampling.  Default value: 2000.'
  id: log_emission_samples_per_round
  inputBinding:
    position: 0
    prefix: --log-emission-samples-per-round
  type: int?
- doc: 'Maximum tolerated median relative error in log emission sampling.  Default
    value: 5.0E-4.'
  id: log_emission_sampling_median_rel_error
  inputBinding:
    position: 0
    prefix: --log-emission-sampling-median-rel-error
  type: double?
- doc: 'Log emission maximum sampling rounds.  Default value: 100.'
  id: log_emission_sampling_rounds
  inputBinding:
    position: 0
    prefix: --log-emission-sampling-rounds
  type: int?
- doc: 'Typical mapping error rate.  Default value: 0.01.'
  id: mapping_error_rate
  inputBinding:
    position: 0
    prefix: --mapping-error-rate
  type: double?
- doc: 'Maximum ADVI iterations in the first epoch.  Default value: 1000.'
  id: max_advi_iter_first_epoch
  inputBinding:
    position: 0
    prefix: --max-advi-iter-first-epoch
  type: int?
- doc: 'Maximum ADVI iterations in subsequent epochs.  Default value: 1000.'
  id: max_advi_iter_subsequent_epochs
  inputBinding:
    position: 0
    prefix: --max-advi-iter-subsequent-epochs
  type: int?
- doc: 'Maximum number of internal self-consistency iterations within each calling
    step.  Default value: 1.'
  id: max_calling_iters
  inputBinding:
    position: 0
    prefix: --max-calling-iters
  type: int?
- doc: 'Maximum number of training epochs.  Default value: 100.'
  id: max_training_epochs
  inputBinding:
    position: 0
    prefix: --max-training-epochs
  type: int?
- doc: 'Prior standard deviation of the contig-level mean coverage bias.  If a single
    sample is provided, this input will be ignored.  Default value: 0.01.'
  id: mean_bias_standard_deviation
  inputBinding:
    position: 0
    prefix: --mean-bias-standard-deviation
  type: double?
- doc: 'Minimum number of training epochs.  Default value: 20.'
  id: min_training_epochs
  inputBinding:
    position: 0
    prefix: --min-training-epochs
  type: int?
- doc: 'Input ploidy-model directory.  If only a single sample is specified, this
    input is required.  If multiple samples are specified, this input should not be
    provided.  Default value: null.'
  id: model
  inputBinding:
    position: 0
    prefix: --model
  type: string
- doc: 'Number of thermal ADVI iterations (for DA-ADVI).  Default value: 5000.'
  id: num_thermal_advi_iters
  inputBinding:
    position: 0
    prefix: --num-thermal-advi-iters
  type: int?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Prior scale of the sample-specific correction to the coverage unexplained
    variance. Default value: 1.0E-4.'
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
