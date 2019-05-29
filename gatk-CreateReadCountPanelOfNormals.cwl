#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CreateReadCountPanelOfNormals
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CreateReadCountPanelOfNormals
inputs:
- doc: Input TSV or HDF5 files containing integer read counts in genomic intervals
    for all samples in the panel of normals (output of CollectReadCounts).  Intervals
    must be identical and in the same order for all samples.  This argument must be
    specified at least once. Required.
  id: input
  inputBinding:
    position: 0
    prefix: --input
  type: File
- doc: Output file for the panel of normals.  Required.
  id: output
  inputBinding:
    position: 0
    prefix: --output
  type: File
- doc: 'Input file containing annotations for GC content in genomic intervals (output
    of AnnotateIntervals).  If provided, explicit GC correction will be performed
    before performing SVD.  Intervals must be identical to and in the same order as
    those in the input read-counts files.  Default value: null.'
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
- doc: 'spark properties to set on the spark context in the format <property>=<value>  This
    argument may be specified 0 or more times. Default value: null.'
  id: conf
  inputBinding:
    position: 0
    prefix: --conf
  type: string?
- doc: 'If true, impute zero-coverage values as the median of the non-zero values
    in the corresponding interval.  (This is applied after all filters.)  Default
    value: true. Possible values: {true, false}'
  id: do_impute_zeros
  inputBinding:
    position: 0
    prefix: --do-impute-zeros
  type: boolean?
- doc: 'Fractional coverages normalized by genomic-interval medians that are below
    this percentile or above the complementary percentile are set to the corresponding
    percentile value. (This is applied after all filters and imputation.)  Default
    value: 0.1.'
  id: extreme_outlier_truncation_percentile
  inputBinding:
    position: 0
    prefix: --extreme-outlier-truncation-percentile
  type: double?
- doc: 'Samples with a median (across genomic intervals) of fractional coverage normalized
    by genomic-interval medians  below this percentile or above the complementary
    percentile are filtered out.  (This is the fourth filter applied.)  Default value:
    2.5.'
  id: extreme_sample_median_percentile
  inputBinding:
    position: 0
    prefix: --extreme-sample-median-percentile
  type: double?
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
- doc: 'Genomic intervals with a fraction of zero-coverage samples above this percentage
    are filtered out.  (This is the third filter applied.)  Default value: 5.0.'
  id: maximum_zeros_in_interval_percentage
  inputBinding:
    position: 0
    prefix: --maximum-zeros-in-interval-percentage
  type: double?
- doc: 'Samples with a fraction of zero-coverage genomic intervals above this percentage
    are filtered out.  (This is the second filter applied.)  Default value: 5.0.'
  id: maximum_zeros_in_sample_percentage
  inputBinding:
    position: 0
    prefix: --maximum-zeros-in-sample-percentage
  type: double?
- doc: 'Genomic intervals with a median (across samples) of fractional coverage (optionally
    corrected for GC bias) less than or equal to this percentile are filtered out.  (This
    is the first filter applied.)  Default value: 10.0.'
  id: minimum_interval_median_percentile
  inputBinding:
    position: 0
    prefix: --minimum-interval-median-percentile
  type: double?
- doc: 'Number of eigensamples to use for truncated SVD and to store in the panel
    of normals.  The number of samples retained after filtering will be used instead
    if it is smaller than this.  Default value: 20.'
  id: number_of_eigensamples
  inputBinding:
    position: 0
    prefix: --number-of-eigensamples
  type: int?
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
- doc: 'Maximum HDF5 matrix chunk size.  Large matrices written to HDF5 are chunked
    into equally sized subsets of rows (plus a subset containing the remainder, if
    necessary) to avoid a hard limit in Java HDF5 on the number of elements in a matrix.  However,
    since a single row is not allowed to be split across multiple chunks, the number
    of columns must be less than the maximum number of values in each chunk.  Decreasing
    this number will reduce heap usage when writing chunks.  Default value: 16777215.'
  id: maximum_chunk_size
  inputBinding:
    position: 0
    prefix: --maximum-chunk-size
  type: int?
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
