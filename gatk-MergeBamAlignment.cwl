#!/usr/bin/env cwl-runner

baseCommand:
- gatk
- MergeBamAlignment
class: CommandLineTool
cwlVersion: v1.0
id: gatk_MergeBamAlignment
inputs:
- doc: picard.jar MergeBamAlignment \
  id: jar
  inputBinding:
    position: 0
    prefix: -jar
  type: boolean?
- doc: Merged SAM or BAM file to write to.  Required.
  id: OUTPUT
  inputBinding:
    position: 0
    prefix: --OUTPUT
  type: File
- doc: Reference sequence file.  Required.
  id: REFERENCE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --REFERENCE_SEQUENCE
  type: File
- doc: Original SAM or BAM file of unmapped reads, which must be in queryname order.  Required.
  id: UNMAPPED_BAM
  inputBinding:
    position: 0
    prefix: --UNMAPPED_BAM
  type: File
- doc: 'Adds the mate CIGAR tag (MC) if true, does not if false.  Default value: true.
    Possible values: {true, false}'
  id: ADD_MATE_CIGAR
  inputBinding:
    position: 0
    prefix: --ADD_MATE_CIGAR
  type: boolean?
- doc: 'Add PG tag to each read in a SAM or BAM  Default value: true. Possible values:
    {true, false}'
  id: ADD_PG_TAG_TO_READS
  inputBinding:
    position: 0
    prefix: --ADD_PG_TAG_TO_READS
  type: boolean?
- doc: 'SAM or BAM file(s) with alignment data.  This argument may be specified 0
    or more times. Default value: null.  Cannot be used in conjuction with argument(s)
    READ1_ALIGNED_BAM (R1_ALIGNED) READ2_ALIGNED_BAM (R2_ALIGNED) READ1_ALIGNED_BAM
    (R1_ALIGNED) READ2_ALIGNED_BAM (R2_ALIGNED)'
  id: ALIGNED_BAM
  inputBinding:
    position: 0
    prefix: --ALIGNED_BAM
  type: File?
- doc: 'Whether to output only aligned reads.    Default value: false. Possible values:
    {true, false}'
  id: ALIGNED_READS_ONLY
  inputBinding:
    position: 0
    prefix: --ALIGNED_READS_ONLY
  type: boolean?
- doc: "Use the aligner's idea of what a proper pair is rather than computing in this\
    \ program. Default value: false. Possible values: {true, false}"
  id: ALIGNER_PROPER_PAIR_FLAGS
  inputBinding:
    position: 0
    prefix: --ALIGNER_PROPER_PAIR_FLAGS
  type: boolean?
- doc: 'read one or more arguments files and add them to the command line  This argument
    may be specified 0 or more times. Default value: null.'
  id: arguments_file
  inputBinding:
    position: 0
    prefix: --arguments_file
  type: File?
- doc: 'Attributes from the alignment record that should be removed when merging.  This
    overrides ATTRIBUTES_TO_RETAIN if they share common tags.  This argument may be
    specified 0 or more times. Default value: null.'
  id: ATTRIBUTES_TO_REMOVE
  inputBinding:
    position: 0
    prefix: --ATTRIBUTES_TO_REMOVE
  type: string?
- doc: 'Reserved alignment attributes (tags starting with X, Y, or Z) that should
    be brought over from the alignment data when merging.  This argument may be specified
    0 or more times. Default value: null.'
  id: ATTRIBUTES_TO_RETAIN
  inputBinding:
    position: 0
    prefix: --ATTRIBUTES_TO_RETAIN
  type: string?
- doc: 'Attributes on negative strand reads that need to be reversed.  This argument
    may be specified 0 or more times. Default value: [OQ, U2].'
  id: ATTRIBUTES_TO_REVERSE
  inputBinding:
    position: 0
    prefix: --ATTRIBUTES_TO_REVERSE
  type: string?
- doc: 'Attributes on negative strand reads that need to be reverse complemented.  This
    argument may be specified 0 or more times. Default value: [E2, SQ].'
  id: ATTRIBUTES_TO_REVERSE_COMPLEMENT
  inputBinding:
    position: 0
    prefix: --ATTRIBUTES_TO_REVERSE_COMPLEMENT
  type: string?
- doc: 'Whether to clip adapters where identified.  Default value: true. Possible
    values: {true, false}'
  id: CLIP_ADAPTERS
  inputBinding:
    position: 0
    prefix: --CLIP_ADAPTERS
  type: boolean?
- doc: "For paired reads, soft clip the 3' end of each read if necessary so that it\
    \ does not extend past the 5' end of its mate.  Default value: true. Possible\
    \ values: {true, false}"
  id: CLIP_OVERLAPPING_READS
  inputBinding:
    position: 0
    prefix: --CLIP_OVERLAPPING_READS
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
- doc: ':PairOrientation The expected orientation of proper read pairs. Replaces JUMP_SIZE  This
    argument may be specified 0 or more times. Default value: null. Possible values:
    {FR, RF, TANDEM}  Cannot be used in conjuction with argument(s) JUMP_SIZE (JUMP)'
  id: EXPECTED_ORIENTATIONS
  inputBinding:
    position: 0
    prefix: --EXPECTED_ORIENTATIONS
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
- doc: 'If false, do not write secondary alignments to output.  Default value: true.
    Possible values: {true, false}'
  id: INCLUDE_SECONDARY_ALIGNMENTS
  inputBinding:
    position: 0
    prefix: --INCLUDE_SECONDARY_ALIGNMENTS
  type: boolean?
- doc: 'Whether the lane is bisulfite sequence (used when calculating the NM tag).  Default
    value: false. Possible values: {true, false}'
  id: IS_BISULFITE_SEQUENCE
  inputBinding:
    position: 0
    prefix: --IS_BISULFITE_SEQUENCE
  type: boolean?
- doc: 'The expected jump size (required if this is a jumping library). Deprecated.
    Use EXPECTED_ORIENTATIONS instead  Default value: null.  Cannot be used in conjuction
    with argument(s) EXPECTED_ORIENTATIONS (ORIENTATIONS) EXPECTED_ORIENTATIONS (ORIENTATIONS)'
  id: JUMP_SIZE
  inputBinding:
    position: 0
    prefix: --JUMP_SIZE
  type: int
- doc: 'of Sequence Records tags that must be equal (if present) in the reference
    dictionary and in the aligned file. Mismatching tags will cause an error if in
    this list, and a warning otherwise.  This argument may be specified 0 or more
    times. Default value: [M5, LN].'
  id: MATCHING_DICTIONARY_TAGS
  inputBinding:
    position: 0
    prefix: --MATCHING_DICTIONARY_TAGS
  type: string?
- doc: The maximum number of insertions or deletions permitted for an alignment to
    be included.
  id: MAX_INSERTIONS_OR_DELETIONS
  inputBinding:
    position: 0
    prefix: --MAX_INSERTIONS_OR_DELETIONS
  type: int?
- doc: 'to allow any number of insertions or deletions.  Default value: 1.'
  id: '1'
  inputBinding:
    position: 0
    prefix: '-1'
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
- doc: 'If UNMAP_CONTAMINANT_READS is set, require this many unclipped bases or else
    the read will be marked as contaminant.  Default value: 32.'
  id: MIN_UNCLIPPED_BASES
  inputBinding:
    position: 0
    prefix: --MIN_UNCLIPPED_BASES
  type: int?
- doc: 'DEPRECATED. This argument is ignored and will be removed.  Default value:
    true. Possible values: {true, false}'
  id: PAIRED_RUN
  inputBinding:
    position: 0
    prefix: --PAIRED_RUN
  type: boolean?
- doc: ':PrimaryAlignmentStrategy Strategy for selecting primary alignment when the
    aligner has provided more than one alignment for a pair or fragment, and none
    are marked as primary, more than one is marked as primary, or the primary alignment
    is filtered out for some reason. For all strategies, ties are resolved arbitrarily.  Default
    value: BestMapq. Possible values: { BestMapq (Expects that multiple alignments
    will be correlated with HI tag, and prefers the pair of alignments with the largest
    MAPQ, in the absence of a primary selected by the aligner.) EarliestFragment (Prefers
    the alignment which maps the earliest base in the read. Note that EarliestFragment
    may not be used for paired reads.) BestEndMapq (Appropriate for cases in which
    the aligner is not pair-aware, and does not output the HI tag. It simply picks
    the alignment for each end with the highest MAPQ, and makes those alignments primary,
    regardless of whether the two alignments make sense together.) MostDistant (Appropriate
    for a non-pair-aware aligner. Picks the alignment pair with the largest insert
    size. If all alignments would be chimeric, it picks the alignments for each end
    with the best MAPQ. ) }'
  id: PRIMARY_ALIGNMENT_STRATEGY
  inputBinding:
    position: 0
    prefix: --PRIMARY_ALIGNMENT_STRATEGY
  type: string?
- doc: 'The command line of the program group (if not supplied by the aligned file).  Default
    value: null.'
  id: PROGRAM_GROUP_COMMAND_LINE
  inputBinding:
    position: 0
    prefix: --PROGRAM_GROUP_COMMAND_LINE
  type: string?
- doc: 'The name of the program group (if not supplied by the aligned file).  Default
    value: null.'
  id: PROGRAM_GROUP_NAME
  inputBinding:
    position: 0
    prefix: --PROGRAM_GROUP_NAME
  type: string?
- doc: 'The version of the program group (if not supplied by the aligned file).  Default
    value: .'
  id: PROGRAM_GROUP_VERSION
  inputBinding:
    position: 0
    prefix: --PROGRAM_GROUP_VERSION
  type: null?
- doc: ':StringThe program group ID of the aligner (if not supplied by the aligned
    file).  Default value: .'
  id: PROGRAM_RECORD_ID
  inputBinding:
    position: 0
    prefix: --PROGRAM_RECORD_ID
  type: null?
- doc: 'Whether to suppress job-summary info on System.err.  Default value: false.
    Possible values: {true, false}'
  id: QUIET
  inputBinding:
    position: 0
    prefix: --QUIET
  type: boolean?
- doc: 'SAM or BAM file(s) with alignment data from the first read of a pair.  This
    argument may be specified 0 or more times. Default value: null.  Cannot be used
    in conjuction with argument(s) ALIGNED_BAM (ALIGNED)'
  id: READ1_ALIGNED_BAM
  inputBinding:
    position: 0
    prefix: --READ1_ALIGNED_BAM
  type: File?
- doc: 'The number of bases trimmed from the beginning of read 1 prior to alignment  Default
    value: 0.'
  id: READ1_TRIM
  inputBinding:
    position: 0
    prefix: --READ1_TRIM
  type: int?
- doc: 'SAM or BAM file(s) with alignment data from the second read of a pair.  This
    argument may be specified 0 or more times. Default value: null.  Cannot be used
    in conjuction with argument(s) ALIGNED_BAM (ALIGNED)'
  id: READ2_ALIGNED_BAM
  inputBinding:
    position: 0
    prefix: --READ2_ALIGNED_BAM
  type: File?
- doc: 'The number of bases trimmed from the beginning of read 2 prior to alignment  Default
    value: 0.'
  id: READ2_TRIM
  inputBinding:
    position: 0
    prefix: --READ2_TRIM
  type: int?
- doc: ':SortOrder    The order in which the merged reads should be output.  Default
    value: coordinate. Possible values: {unsorted, queryname, coordinate, duplicate,
    unknown}'
  id: SORT_ORDER
  inputBinding:
    position: 0
    prefix: --SORT_ORDER
  type: string?
- doc: 'One or more directories with space available to be used by this program for
    temporary storage of working files  This argument may be specified 0 or more times.
    Default value: .'
  id: TMP_DIR
  inputBinding:
    position: 0
    prefix: --TMP_DIR
  type: null?
- doc: 'Detect reads originating from foreign organisms (e.g. bacterial DNA in a non-bacterial
    sample),and unmap + label those reads accordingly.  Default value: false. Possible
    values: {true, false}'
  id: UNMAP_CONTAMINANT_READS
  inputBinding:
    position: 0
    prefix: --UNMAP_CONTAMINANT_READS
  type: boolean?
- doc: ':UnmappingReadStrategy How to deal with alignment information in reads that
    are being unmapped (e.g. due to cross-species contamination.) Currently ignored
    unless UNMAP_CONTAMINANT_READS = true Default value: DO_NOT_CHANGE. Possible values:
    {COPY_TO_TAG, DO_NOT_CHANGE, MOVE_TO_TAG}'
  id: UNMAPPED_READ_STRATEGY
  inputBinding:
    position: 0
    prefix: --UNMAPPED_READ_STRATEGY
  type: string?
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
