#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- SamToFastqWithTags
class: CommandLineTool
cwlVersion: v1.0
id: gatk_SamToFastqWithTags
inputs:
- doc: picard.jar
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Output FASTQ file (single-end fastq or, if paired, first end of the pair FASTQ).
    Required.  Cannot be used in conjuction with argument(s) OUTPUT_PER_RG (OPRG)
    COMPRESS_OUTPUTS_PER_RG (GZOPRG) OUTPUT_DIR (ODIR) OUTPUT_PER_RG (OPRG) COMPRESS_OUTPUTS_PER_RG
    (GZOPRG)
  id: FASTQ
  inputBinding:
    position: 0
    prefix: --FASTQ
  type: File
- doc: Input SAM/BAM file to extract reads from  Required.
  id: INPUT
  inputBinding:
    position: 0
    prefix: --INPUT
  type: File
- doc: of comma separated tag values to extract from Input SAM/BAM to be used as read
    sequence  This argument must be specified at least once. Required.
  id: SEQUENCE_TAG_GROUP
  inputBinding:
    position: 0
    prefix: --SEQUENCE_TAG_GROUP
  type: array
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: "The action that should be taken with clipped reads: 'X' means the reads and\
    \ qualities should be trimmed at the clipped position; 'N' means the bases should\
    \ be changed to Ns in the clipped region; and any integer means that the base\
    \ qualities should be set to that value in the clipped region.  Default value:\
    \ null."
  id: CLIPPING_ACTION
  inputBinding:
    position: 0
    prefix: --CLIPPING_ACTION
  type: string?
- doc: 'The attribute that stores the position at which the SAM record should be clipped  Default
    value: null.'
  id: CLIPPING_ATTRIBUTE
  inputBinding:
    position: 0
    prefix: --CLIPPING_ATTRIBUTE
  type: string?
- doc: 'When performing clipping with the CLIPPING_ATTRIBUTE and CLIPPING_ACTION parameters,
    ensure that the resulting reads after clipping are at least CLIPPING_MIN_LENGTH
    bases . If the original read is shorter than CLIPPING_MIN_LENGTH then the original
    read length will be maintained.  Default value: 0.'
  id: CLIPPING_MIN_LENGTH
  inputBinding:
    position: 0
    prefix: --CLIPPING_MIN_LENGTH
  type: long?
- doc: 'Compress output FASTQ files per read group using gzip and append a .gz extension
    to the names.  Default value: false. Possible values: {true, false}  Cannot be
    used in conjuction with argument(s) FASTQ (F) SECOND_END_FASTQ (F2) UNPAIRED_FASTQ
    (FU)'
  id: COMPRESS_OUTPUTS_PER_RG
  inputBinding:
    position: 0
    prefix: --COMPRESS_OUTPUTS_PER_RG
  type: boolean?
- doc: 'Compress output FASTQ files per Tag grouping using gzip and append a .gz extension
    to the names.  Default value: false. Possible values: {true, false}'
  id: COMPRESS_OUTPUTS_PER_TAG_GROUP
  inputBinding:
    position: 0
    prefix: --COMPRESS_OUTPUTS_PER_TAG_GROUP
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
- doc: "Include non-PF reads from the SAM file into the output FASTQ files. PF means\
    \ 'passes filtering'. Reads whose 'not passing quality controls' flag is set are\
    \ non-PF reads. See GATK Dictionary for more info.  Default value: false. Possible\
    \ values: {true, false}"
  id: INCLUDE_NON_PF_READS
  inputBinding:
    position: 0
    prefix: --INCLUDE_NON_PF_READS
  type: boolean?
- doc: 'If true, include non-primary alignments in the output.  Support of non-primary
    alignments in SamToFastq is not comprehensive, so there may be exceptions if this
    is set to true and there are paired reads with non-primary alignments.  Default
    value: false. Possible values: {true, false}'
  id: INCLUDE_NON_PRIMARY_ALIGNMENTS
  inputBinding:
    position: 0
    prefix: --INCLUDE_NON_PRIMARY_ALIGNMENTS
  type: boolean?
- doc: 'Will generate an interleaved fastq if paired, each line will have /1 or /2
    to describe which end it came from  Default value: false. Possible values: {true,
    false}'
  id: INTERLEAVE
  inputBinding:
    position: 0
    prefix: --INTERLEAVE
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
- doc: 'in which to output the FASTQ file(s).  Used only when OUTPUT_PER_RG is true.
    Default value: null.'
  id: OUTPUT_DIR
  inputBinding:
    position: 0
    prefix: --OUTPUT_DIR
  type: Directory?
- doc: 'Output a FASTQ file per read group (two FASTQ files per read group if the
    group is paired).  Default value: false. Possible values: {true, false}  Cannot
    be used in conjuction with argument(s) FASTQ (F) SECOND_END_FASTQ (F2) UNPAIRED_FASTQ
    (FU)'
  id: OUTPUT_PER_RG
  inputBinding:
    position: 0
    prefix: --OUTPUT_PER_RG
  type: boolean?
- doc: 'End-trim reads using the phred/bwa quality trimming algorithm and this quality.  Default
    value: null.'
  id: QUALITY
  inputBinding:
    position: 0
    prefix: --QUALITY
  type: int?
- doc: 'of comma separated tag values to extract from Input SAM/BAM to be used as
    read qualities  This argument may be specified 0 or more times. Default value:
    null.'
  id: QUALITY_TAG_GROUP
  inputBinding:
    position: 0
    prefix: --QUALITY_TAG_GROUP
  type: array?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'Re-reverse bases and qualities of reads with negative strand flag set before
    writing them to FASTQ  Default value: true. Possible values: {true, false}'
  id: RE_REVERSE
  inputBinding:
    position: 0
    prefix: --RE_REVERSE
  type: boolean?
- doc: 'The maximum number of bases to write from read 1 after trimming. If there
    are fewer than this many bases left after trimming, all will be written.  If this
    value is null then all bases left after trimming will be written.  Default value:
    null.'
  id: READ1_MAX_BASES_TO_WRITE
  inputBinding:
    position: 0
    prefix: --READ1_MAX_BASES_TO_WRITE
  type: int?
- doc: 'The number of bases to trim from the beginning of read 1.  Default value:
    0.'
  id: READ1_TRIM
  inputBinding:
    position: 0
    prefix: --READ1_TRIM
  type: int?
- doc: 'The maximum number of bases to write from read 2 after trimming. If there
    are fewer than this many bases left after trimming, all will be written.  If this
    value is null then all bases left after trimming will be written.  Default value:
    null.'
  id: READ2_MAX_BASES_TO_WRITE
  inputBinding:
    position: 0
    prefix: --READ2_MAX_BASES_TO_WRITE
  type: int?
- doc: 'The number of bases to trim from the beginning of read 2.  Default value:
    0.'
  id: READ2_TRIM
  inputBinding:
    position: 0
    prefix: --READ2_TRIM
  type: int?
- doc: 'Reference sequence file.  Default value: null.'
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File?
- doc: 'The read group tag (PU or ID) to be used to output a FASTQ file per read group.  Default
    value: PU.'
  id: RG_TAG
  inputBinding:
    position: 0
    prefix: --RG_TAG
  type: string?
- doc: 'Output FASTQ file (if paired, second end of the pair FASTQ).  Default value:
    null.  Cannot be used in conjuction with argument(s) OUTPUT_PER_RG (OPRG) COMPRESS_OUTPUTS_PER_RG
    (GZOPRG) OUTPUT_PER_RG (OPRG) COMPRESS_OUTPUTS_PER_RG (GZOPRG)'
  id: SECOND_END_FASTQ
  inputBinding:
    position: 0
    prefix: --SECOND_END_FASTQ
  type: File?
- doc: "of any sequences (e.g. 'AACCTG`) to put in between each comma separated list\
    \ of sequence tags in each SEQUENCE_TAG_GROUP (STG)  This argument may be specified\
    \ 0 or more times. Default value: null."
  id: TAG_GROUP_SEPERATOR
  inputBinding:
    position: 0
    prefix: --TAG_GROUP_SEPERATOR
  type: array?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
- doc: 'Output FASTQ file for unpaired reads; may only be provided in paired-FASTQ
    mode  Default value: null.  Cannot be used in conjuction with argument(s) OUTPUT_PER_RG
    (OPRG) COMPRESS_OUTPUTS_PER_RG (GZOPRG) OUTPUT_PER_RG (OPRG) COMPRESS_OUTPUTS_PER_RG
    (GZOPRG)'
  id: UNPAIRED_FASTQ
  inputBinding:
    position: 0
    prefix: --UNPAIRED_FASTQ
  type: File?
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
