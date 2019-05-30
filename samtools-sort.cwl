#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- sort
class: CommandLineTool
cwlVersion: v1.0
doc: 'samtools sort [-on] [-m <maxMem>] <in.bam> <out.prefix>'
id: samtools_sort

inputs:
- id: o
  inputBinding:
    position: 0
    prefix: -o
  type: boolean?
- id: n
  inputBinding:
    position: 0
    prefix: -n
  type: boolean?
- id: m
  inputBinding:
    position: 0
    prefix: -o
  type: string?
- id: in_bam
  inputBinding:
    position: 1
  type: File
- id: out_prefix
  inputBinding:
    position: 2
  type: File

outputs: []