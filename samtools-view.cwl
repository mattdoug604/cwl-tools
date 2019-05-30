#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- view
class: CommandLineTool
cwlVersion: v1.0
doc: 'samtools view [options] <in.bam>|<in.sam> [region1 [...]]'
id: samtools_view
inputs:
- doc: output BAM
  id: b
  inputBinding:
    position: 0
    prefix: -b
  type: boolean?
- doc: print header for the SAM output
  id: h
  inputBinding:
    position: 0
    prefix: -h
  type: boolean?
- doc: print header only (no alignments)
  id: H
  inputBinding:
    position: 0
    prefix: -H
  type: boolean?
- doc: input is SAM
  id: S
  inputBinding:
    position: 0
    prefix: -S
  type: boolean?
- doc: output FLAG in HEX (samtools-C specific)
  id: x
  inputBinding:
    position: 0
    prefix: -x
  type: boolean?
- doc: output FLAG in string (samtools-C specific)
  id: X
  inputBinding:
    position: 0
    prefix: -X
  type: boolean?
- doc: print only the count of matching records
  id: c
  inputBinding:
    position: 0
    prefix: -c
  type: boolean?
- doc: output alignments overlapping the input BED FILE [null]
  id: L
  inputBinding:
    position: 0
    prefix: -L
  type: File?
- doc: output file name [stdout]
  id: o
  inputBinding:
    position: 0
    prefix: -o
  type: File?
- doc: of read groups to be outputted [null]
  id: R
  inputBinding:
    position: 0
    prefix: -R
  type: File?
- doc: required flag, 0 for unset [0]
  id: f
  inputBinding:
    position: 0
    prefix: -f
  type: int
- doc: filtering flag, 0 for unset [0]
  id: F
  inputBinding:
    position: 0
    prefix: -F
  type: int?
- doc: minimum mapping quality [0]
  id: q
  inputBinding:
    position: 0
    prefix: -q
  type: int?
- doc: only output reads in library STR [null]
  id: l
  inputBinding:
    position: 0
    prefix: -l
  type: string?
- doc: only output reads in read group STR [null]
  id: r
  inputBinding:
    position: 0
    prefix: -r
  type: string?
- doc: ']'
  id: '1'
  inputBinding:
    position: 0
    prefix: '-1'
  type: float?
- doc: longer help
  id: '?'
  inputBinding:
    position: 0
    prefix: -?
  type: boolean?
- id: in_aln
  inputBinding:
    position: 1
  type: File
- id: region
  inputBinding:
    position: 2
  type: string?

outputs: []