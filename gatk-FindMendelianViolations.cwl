#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- FindMendelianViolations
class: CommandLineTool
cwlVersion: v1.0
id: gatk_FindMendelianViolations
inputs:
- doc: picard.jar FindMendelianViolations\
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Input VCF or BCF with genotypes.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: Output metrics file.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: of Trio information in PED format (with no genotype columns).  Required.
  id: TRIOS
  inputBinding:
    position: 0
    prefix: --TRIOS
  type: File
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
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
- doc: 'of possible names for female sex chromosome(s)  This argument may be specified
    0 or more times. Default value: [chrX, X].'
  id: FEMALE_CHROMS
  inputBinding:
    position: 0
    prefix: --FEMALE_CHROMS
  type: string?
- doc: 'Google Genomics API client_secrets.json file path.  Default value: client_secrets.json.'
  id: GA4GH_CLIENT_SECRETS
  inputBinding:
    position: 0
    prefix: --GA4GH_CLIENT_SECRETS
  type: string?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'of possible names for male sex chromosome(s)  This argument may be specified
    0 or more times. Default value: [chrY, Y].'
  id: MALE_CHROMS
  inputBinding:
    position: 0
    prefix: --MALE_CHROMS
  type: string?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: 'Minimum depth in each sample to consider possible mendelian violations.  Default
    value: 0.'
  id: MIN_DP
  inputBinding:
    position: 0
    prefix: --MIN_DP
  type: int?
- doc: 'Minimum genotyping quality (or non-ref likelihood) to perform tests.  Default
    value: 30.'
  id: MIN_GQ
  inputBinding:
    position: 0
    prefix: --MIN_GQ
  type: int?
- doc: 'Minimum allele balance at sites that are heterozygous in the offspring.  Default
    value: 0.3.'
  id: MIN_HET_FRACTION
  inputBinding:
    position: 0
    prefix: --MIN_HET_FRACTION
  type: double?
- doc: 'of chr:start-end for pseudo-autosomal regions on the female sex chromosome.
    Defaults to HG19/b37 & HG38 coordinates.  This argument may be specified 0 or
    more times. Default value: [chrX:10000-2781479, X:10001-2649520, chrX:155701382-156030895,
    X:59034050-59373566].'
  id: PSEUDO_AUTOSOMAL_REGIONS
  inputBinding:
    position: 0
    prefix: --PSEUDO_AUTOSOMAL_REGIONS
  type: string?
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
- doc: 'of chromosome names to skip entirely.  This argument may be specified 0 or
    more times. Default value: [MT, chrM].'
  id: SKIP_CHROMS
  inputBinding:
    position: 0
    prefix: --SKIP_CHROMS
  type: string?
- doc: 'If true then fields need to be delimited by a single tab. If false the delimiter
    is one or more whitespace characters. Note that tab mode does not strictly follow
    the PED spec Default value: false. Possible values: {true, false}'
  id: TAB_MODE
  inputBinding:
    position: 0
    prefix: --TAB_MODE
  type: boolean?
- doc: 'The number of threads that will be used to collect the metrics.   Default
    value: 1.'
  id: THREAD_COUNT
  inputBinding:
    position: 0
    prefix: --THREAD_COUNT
  type: int?
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
- doc: 'If provided, output per-family VCFs of mendelian violations into this directory.  Default
    value: null.'
  id: VCF_DIR
  inputBinding:
    position: 0
    prefix: --VCF_DIR
  type: File?
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
