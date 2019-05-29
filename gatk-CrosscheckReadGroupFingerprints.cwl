#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CrosscheckReadGroupFingerprints
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CrosscheckReadGroupFingerprints
inputs:
- doc: The file lists a set of SNPs, optionally arranged in high-LD blocks, to be
    used for fingerprinting. See https://software.broadinstitute.org/gatk/documentation/article?id=9526
    for details.  Required.
  id: HAPLOTYPE_MAP
  inputBinding:
    position: 0
    prefix: --HAPLOTYPE_MAP
  type: File
- doc: One or more input files (or lists of files) with which to compare fingerprints.  This
    argument must be specified at least once. Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: string
- doc: 'Allow the use of duplicate reads in performing the comparison. Can be useful
    when duplicate marking has been overly aggressive and coverage is low.  Default
    value: false. Possible values: {true, false}'
  id: ALLOW_DUPLICATE_READS
  inputBinding:
    position: 0
    prefix: --ALLOW_DUPLICATE_READS
  type: boolean?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'specifies whether the Tumor-aware result should be calculated. These are time
    consuming and can roughly double the runtime of the tool. When crosschecking many
    groups not calculating the tumor-aware  results can result in a significant speedup.  Default
    value: true. Possible values: {true, false}'
  id: CALCULATE_TUMOR_AWARE_RESULTS
  inputBinding:
    position: 0
    prefix: --CALCULATE_TUMOR_AWARE_RESULTS
  type: boolean?
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
- doc: ':DataType      Specificies which data-type should be used as the basic comparison
    unit. Fingerprints from readgroups can be "rolled-up" to the LIBRARY, SAMPLE,
    or FILE level before being compared. Fingerprints from VCF can be be compared
    by SAMPLE or FILE.  Default value: READGROUP. Possible values: {FILE, SAMPLE,
    LIBRARY, READGROUP}'
  id: CROSSCHECK_BY
  inputBinding:
    position: 0
    prefix: --CROSSCHECK_BY
  type: string?
- doc: ':BooleanInstead of producing the normal comparison of read-groups, roll fingerprints
    up to the library level and print out a library x library matrix with LOD scores.  Default
    value: false. Possible values: {true, false}'
  id: CROSSCHECK_LIBRARIES
  inputBinding:
    position: 0
    prefix: --CROSSCHECK_LIBRARIES
  type: boolean?
- doc: ':CrosscheckMode An argument that controls how crosschecking with both INPUT
    and SECOND_INPUT should occur. Default value: CHECK_SAME_SAMPLE. Possible values:
    { CHECK_SAME_SAMPLE (In this mode, each sample in INPUT will only be checked against
    a single corresponding sample in SECOND_INPUT. If a corresponding sample cannot
    be found, the program will proceed, but report the missing samples and return
    the value specified in EXIT_CODE_WHEN_MISMATCH. The corresponding samples are
    those that equal each other, after possible renaming via INPUT_SAMPLE_MAP and
    SECOND_INPUT_SAMPLE_MAP. In this mode CROSSCHECK_BY must be SAMPLE.) CHECK_ALL_OTHERS
    (In this mode, each sample in INPUT will be checked against all the samples in
    SECOND_INPUT.) }'
  id: CROSSCHECK_MODE
  inputBinding:
    position: 0
    prefix: --CROSSCHECK_MODE
  type: string?
- doc: 'Instead of producing the normal comparison of read-groups, roll fingerprints
    up to the sample level and print out a sample x sample matrix with LOD scores.  Default
    value: false. Possible values: {true, false}'
  id: CROSSCHECK_SAMPLES
  inputBinding:
    position: 0
    prefix: --CROSSCHECK_SAMPLES
  type: boolean?
- doc: 'When one or more mismatches between groups is detected, exit with this value
    instead of 0. Default value: 1.'
  id: EXIT_CODE_WHEN_MISMATCH
  inputBinding:
    position: 0
    prefix: --EXIT_CODE_WHEN_MISMATCH
  type: int?
- doc: "Expect all groups' fingerprints to match, irrespective of their sample names.\
    \  By default (with this value set to false), groups (readgroups, libraries, files,\
    \ or samples) with different sample names are expected to mismatch, and those\
    \ with the same sample name are expected to match.   Default value: false. Possible\
    \ values: {true, false}"
  id: EXPECT_ALL_GROUPS_TO_MATCH
  inputBinding:
    position: 0
    prefix: --EXPECT_ALL_GROUPS_TO_MATCH
  type: boolean?
- doc: "Expect all read groups' fingerprints to match, irrespective of their sample\
    \ names.  By default (with this value set to false), read groups with different\
    \ sample names are expected to mismatch, and those with the same sample name are\
    \ expected to match.  Default value: false. Possible values: {true, false}  Cannot\
    \ be used in conjuction with argument(s) EXPECT_ALL_GROUPS_TO_MATCH"
  id: EXPECT_ALL_READ_GROUPS_TO_MATCH
  inputBinding:
    position: 0
    prefix: --EXPECT_ALL_READ_GROUPS_TO_MATCH
  type: boolean?
- doc: 'Google Genomics API client_secrets.json file path.  Default value: client_secrets.json.'
  id: GA4GH_CLIENT_SECRETS
  inputBinding:
    position: 0
    prefix: --GA4GH_CLIENT_SECRETS
  type: string?
- doc: ':DoubleAssumed genotyping error rate that provides a floor on the probability
    that a genotype comes from the expected sample. Must be greater than zero.   Default
    value: 0.01.'
  id: GENOTYPING_ERROR_RATE
  inputBinding:
    position: 0
    prefix: --GENOTYPING_ERROR_RATE
  type: boolean?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'A tsv with two columns representing the sample as it appears in the INPUT
    data (in column 1) and the sample as it should be used for comparisons to SECOND_INPUT
    (in the second column). Need only include the samples that change. Values in column
    1 should be unique. Values in column 2 should be unique even in union with the
    remaining unmapped samples. Should only be used with SECOND_INPUT.   Default value:
    null.'
  id: INPUT_SAMPLE_MAP
  inputBinding:
    position: 0
    prefix: --INPUT_SAMPLE_MAP
  type: File?
- doc: If any two groups (with the same sample name) match with a LOD score lower
    than the threshold the tool will exit with a non-zero code to indicate error.
    Program will also exit with an error if it finds two groups with different sample
    name that match with a LOD
  id: LOD_THRESHOLD
  inputBinding:
    position: 0
    prefix: --LOD_THRESHOLD
  type: double?
- doc: ''
  id: LOD_THRESHOLD.
  inputBinding:
    position: 0
    prefix: -LOD_THRESHOLD.
  type: boolean
- doc: ', mean 10^N time more likely that the groups are from different individuals,
    and +N means 10^N times more likely that the groups are from the same individual.   Default
    value: 0.0.'
  id: N
  inputBinding:
    position: 0
    prefix: -N
  type: boolean?
- doc: 'The rate at which a heterozygous genotype in a normal sample turns into a
    homozygous (via loss of heterozygosity) in the tumor (model assumes independent
    events, so this needs to be larger than reality).  Default value: 0.5.'
  id: LOSS_OF_HET_RATE
  inputBinding:
    position: 0
    prefix: --LOSS_OF_HET_RATE
  type: double?
- doc: "Optional output file to write matrix of LOD scores to. This is less informative\
    \ than the metrics output and only contains Normal-Normal LOD score (i.e. doesn't\
    \ account for Loss of Heterozygosity). It is however sometimes easier to use visually.\
    \  Default value: null. Cannot be used in conjuction with argument(s) SECOND_INPUT\
    \ (SI)"
  id: MATRIX_OUTPUT
  inputBinding:
    position: 0
    prefix: --MATRIX_OUTPUT
  type: File?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: 'The number of threads to use to process files and generate fingerprints.  Default
    value: 1.'
  id: NUM_THREADS
  inputBinding:
    position: 0
    prefix: --NUM_THREADS
  type: int?
- doc: 'Optional output file to write metrics to. Default is to write to stdout.  Default
    value: .'
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: null?
- doc: 'If true then only groups that do not relate to each other as expected will
    have their LODs reported.  Default value: false. Possible values: {true, false}'
  id: OUTPUT_ERRORS_ONLY
  inputBinding:
    position: 0
    prefix: --OUTPUT_ERRORS_ONLY
  type: boolean?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: 'A second set of input files (or lists of files) with which to compare fingerprints.
    If this option is provided the tool compares each sample in INPUT with the sample
    from SECOND_INPUT that has the same sample ID. In addition, data will be grouped
    by SAMPLE regardless of the value of CROSSCHECK_BY. When operating in this mode,
    each sample in INPUT must also have a corresponding sample in SECOND_INPUT. If
    this is violated, the tool will proceed to check the matching samples, but report
    the missing samples and return a non-zero error-code.  This argument may be specified
    0 or more times. Default value: null. Cannot be used in conjuction with argument(s)
    MATRIX_OUTPUT (MO) MATRIX_OUTPUT (MO)'
  id: SECOND_INPUT
  inputBinding:
    position: 0
    prefix: --SECOND_INPUT
  type: string?
- doc: ':FileA tsv with two columns representing the sample as it appears in the SECOND_INPUT
    data (in column 1) and the sample as it should be used for comparisons to INPUT
    (in the second column). Need only include the samples that change. Values in column
    1 should be unique. Values in column 2 should be unique even in union with the
    remaining unmapped samples. Should only be used with SECOND_INPUT.   Default value:
    null.'
  id: SECOND_INPUT_SAMPLE_MAP
  inputBinding:
    position: 0
    prefix: --SECOND_INPUT_SAMPLE_MAP
  type: boolean?
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
