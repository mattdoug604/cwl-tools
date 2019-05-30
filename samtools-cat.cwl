#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- cat
class: CommandLineTool
cwlVersion: v1.0
id: samtools_cat
doc: samtools cat [-h header.sam] [-o out.bam] <in1.bam> <in2.bam> [...]

inputs:
- id: h
  inputBinding:
    position: 0
    prefix: -h
  type: File?
- id: o
  inputBinding:
    position: 0
    prefix: -o
  type: File?
- id: in_bam
  inputBinding:
    position: 1
  type:
    type: array
    items: File

outputs: []