#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- CheckFingerprint
class: CommandLineTool
cwlVersion: v1.0
id: gatk_CheckFingerprint
inputs:
- doc: picard.jar CheckFingerprint \
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: The text file to which to write detail metrics.  Required.  Cannot be used
    in conjuction with argument(s) OUTPUT (O)
  id: DETAIL_OUTPUT
  inputBinding:
    position: 0
    prefix: --DETAIL_OUTPUT
  type: File
- doc: of genotypes (VCF) to be used in comparison. May contain any number of genotypes;
    CheckFingerprint will use only those that are usable for fingerprinting.  Required.
  id: GENOTYPES
  inputBinding:
    position: 0
    prefix: --GENOTYPES
  type: File
- doc: The file lists a set of SNPs, optionally arranged in high-LD blocks, to be
    used for fingerprinting. See https://software.broadinstitute.org/gatk/documentation/article?id=9526
    for details.  Required.
  id: HAPLOTYPE_MAP
  inputBinding:
    position: 0
    prefix: --HAPLOTYPE_MAP
  type: File
- doc: Input file SAM/BAM or VCF.  If a VCF is used, it must have at least one sample.  If
    there are more than one samples in the VCF, the parameter OBSERVED_SAMPLE_ALIAS
    must be provided in order to indicate which sample's data to use.  If there are
    no samples in the VCF, an exception will be thrown.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: string
- doc: The base prefix of output files to write.  The summary metrics will have the
    file extension 'fingerprinting_summary_metrics' and the detail metrics will have
    the extension 'fingerprinting_detail_metrics'.  Required.  Cannot be used in conjuction
    with argument(s) SUMMARY_OUTPUT (S) DETAIL_OUTPUT (D) SUMMARY_OUTPUT (S) DETAIL_OUTPUT
    (D)
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: string
- doc: The text file to which to write summary metrics.  Required.  Cannot be used
    in conjuction with argument(s) OUTPUT (O)
  id: SUMMARY_OUTPUT
  inputBinding:
    position: 0
    prefix: --SUMMARY_OUTPUT
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
- doc: "This parameter can be used to specify which sample's genotypes to use from\
    \ the expected VCF file (the GENOTYPES file).  If it is not supplied, the sample\
    \ name from the input (VCF or BAM read group header) will be used.  Default value:\
    \ null."
  id: EXPECTED_SAMPLE_ALIAS
  inputBinding:
    position: 0
    prefix: --EXPECTED_SAMPLE_ALIAS
  type: string?
- doc: 'Google Genomics API client_secrets.json file path.  Default value: client_secrets.json.'
  id: GA4GH_CLIENT_SECRETS
  inputBinding:
    position: 0
    prefix: --GA4GH_CLIENT_SECRETS
  type: string?
- doc: 'When counting haplotypes checked and matching, count only haplotypes where
    the most likely haplotype achieves at least this LOD.  Default value: 5.0.'
  id: GENOTYPE_LOD_THRESHOLD
  inputBinding:
    position: 0
    prefix: --GENOTYPE_LOD_THRESHOLD
  type: double?
- doc: 'display the help message  Default value: false. Possible values: {true, false}'
  id: help
  inputBinding:
    position: 0
    prefix: --help
  type: boolean?
- doc: 'If the input is a SAM/BAM, and this parameter is true, treat the entire input
    BAM as one single read group in the calculation, ignoring RG annotations, and
    producing a single fingerprint metric for the entire BAM.  Default value: false.
    Possible values: {true, false}'
  id: IGNORE_READ_GROUPS
  inputBinding:
    position: 0
    prefix: --IGNORE_READ_GROUPS
  type: boolean?
- doc: 'When writing files that need to be sorted, this will specify the number of
    records stored in RAM before spilling to disk. Increasing this number reduces
    the number of file handles needed to sort the file, and increases the amount of
    RAM needed.  Default value: 500000.'
  id: MAX_RECORDS_IN_RAM
  inputBinding:
    position: 0
    prefix: --MAX_RECORDS_IN_RAM
  type: int?
- doc: ":StringIf the input is a VCF, this parameters used to select which sample's\
    \ data in the VCF to use.  Default value: null."
  id: OBSERVED_SAMPLE_ALIAS
  inputBinding:
    position: 0
    prefix: --OBSERVED_SAMPLE_ALIAS
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
