#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CNNVariantTrain
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CNNVariantTrain
inputs:
- doc: of training tensors to create.  Required.
  id: input_tensor_dir
  inputBinding:
    position: 0
    prefix: --input-tensor-dir
  type: Directory
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Maximum number of training epochs.  Default value: 10.'
  id: epochs
  inputBinding:
    position: 0
    prefix: --epochs
  type: int?
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
- doc: 'Path where plots and figures are saved.  Default value: null.'
  id: image_dir
  inputBinding:
    position: 0
    prefix: --image-dir
  type: string?
- doc: 'Name of the model to be trained.  Default value: variant_filter_model.'
  id: model_name
  inputBinding:
    position: 0
    prefix: --model-name
  type: string?
- doc: 'where models will be saved, defaults to current working directory.  Default
    value: ./.'
  id: output_dir
  inputBinding:
    position: 0
    prefix: --output-dir
  type: Directory?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: ':TensorType Name of the tensors to generate, reference for 1D reference tensors
    and read_tensor for 2D tensors.  Default value: reference. Possible values: {
    reference ( 1 Hot encoding of a reference sequence. ) read_tensor (Read tensor
    are 3D tensors spanning aligned reads, sites and channels. The maximum number
    of reads is a hyper-parameter typically set to 128. There are 15 channels in the
    read tensor. They correspond to the reference sequence data (4), read sequence
    data (4), insertions and deletions (2) read flags (4) and mapping quality (1).)
    }'
  id: tensor_type
  inputBinding:
    position: 0
    prefix: --tensor-type
  type: string?
- doc: 'Temp directory to use.  Default value: null.'
  id: tmp_dir
  inputBinding:
    position: 0
    prefix: --tmp-dir
  type: string?
- doc: 'Number of training steps per epoch.  Default value: 10.'
  id: training_steps
  inputBinding:
    position: 0
    prefix: --training-steps
  type: int?
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
- doc: 'Number of validation steps per epoch.  Default value: 2.'
  id: validation_steps
  inputBinding:
    position: 0
    prefix: --validation-steps
  type: int?
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
- doc: 'Which set of annotations to use.  Default value: best_practices.'
  id: annotation_set
  inputBinding:
    position: 0
    prefix: --annotation-set
  type: string?
- doc: 'Store the channels in the last axis of tensors, tensorflow->true, theano->false  Default
    value: true. Possible values: {true, false}'
  id: channels_last
  inputBinding:
    position: 0
    prefix: --channels-last
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
