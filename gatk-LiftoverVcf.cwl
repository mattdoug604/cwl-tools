#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- LiftoverVcf
class: CommandLineTool
cwlVersion: v1.0
id: gatk_LiftoverVcf
inputs:
- doc: picard.jar LiftoverVcf \
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: The liftover chain file. See https://genome.ucsc.edu/goldenPath/help/chain.html
    for a description of chain files.  See http://hgdownload.soe.ucsc.edu/downloads.html#terms
    for where to download chain files.  Required.
  id: CHAIN
  inputBinding:
    position: 0
    prefix: --CHAIN
  type: File
- doc: The input VCF/BCF file to be lifted over.  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: The output location for the lifted over VCF/BCF.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: The reference sequence (fasta) for the TARGET genome build (i.e., the new one.  The
    fasta must have an accompanying sequence dictionary (.dict file).  Required.
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File
- doc: to which to write rejected records.  Required.
  id: REJECT
  inputBinding:
    position: 0
    prefix: --REJECT
  type: File
- doc: 'Allow INFO and FORMAT in the records that are not found in the header  Default
    value: false. Possible values: {true, false}'
  id: ALLOW_MISSING_FIELDS_IN_HEADER
  inputBinding:
    position: 0
    prefix: --ALLOW_MISSING_FIELDS_IN_HEADER
  type: boolean?
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
- doc: 'The minimum percent match required for a variant to be lifted.  Default value:
    1.0.'
  id: LIFTOVER_MIN_MATCH
  inputBinding:
    position: 0
    prefix: --LIFTOVER_MIN_MATCH
  type: double
- doc: 'If true, intervals failing due to match below LIFTOVER_MIN_MATCH will be logged
    as a warning to the console.  Default value: true. Possible values: {true, false}'
  id: LOG_FAILED_INTERVALS
  inputBinding:
    position: 0
    prefix: --LOG_FAILED_INTERVALS
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
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'If the REF allele of the lifted site does not match the target genome, that
    variant is normally rejected. For bi-allelic SNPs, if this is set to true and
    the ALT allele equals the new REF allele, the REF and ALT alleles will be swapped.  This
    can rescue some variants; however, do this carefully as some annotations may become
    invalid, such as any that are alelle-specifc.  See also TAGS_TO_REVERSE and TAGS_TO_DROP.  Default
    value: false. Possible values: {true, false}'
  id: RECOVER_SWAPPED_REF_ALT
  inputBinding:
    position: 0
    prefix: --RECOVER_SWAPPED_REF_ALT
  type: boolean?
- doc: 'INFO field annotations that should be deleted when swapping reference with
    variant alleles.  This argument may be specified 0 or more times. Default value:
    [MAX_AF].'
  id: TAGS_TO_DROP
  inputBinding:
    position: 0
    prefix: --TAGS_TO_DROP
  type: string?
- doc: 'INFO field annotations that behave like an Allele Frequency and should be
    transformed with x->1-x when swapping reference with variant alleles.  This argument
    may be specified 0 or more times. Default value: [AF].'
  id: TAGS_TO_REVERSE
  inputBinding:
    position: 0
    prefix: --TAGS_TO_REVERSE
  type: string?
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
- doc: 'Warn on missing contig.  Default value: false. Possible values: {true, false}'
  id: WARN_ON_MISSING_CONTIG
  inputBinding:
    position: 0
    prefix: --WARN_ON_MISSING_CONTIG
  type: boolean?
- doc: 'Write the original alleles for lifted variants to the INFO field.  If the
    alleles are identical, this attribute will be omitted.  Default value: false.
    Possible values: {true, false}'
  id: WRITE_ORIGINAL_ALLELES
  inputBinding:
    position: 0
    prefix: --WRITE_ORIGINAL_ALLELES
  type: boolean?
- doc: 'Write the original contig/position for lifted variants to the INFO field.  Default
    value: false. Possible values: {true, false}'
  id: WRITE_ORIGINAL_POSITION
  inputBinding:
    position: 0
    prefix: --WRITE_ORIGINAL_POSITION
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
