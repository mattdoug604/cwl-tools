#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- depth
class: CommandLineTool
cwlVersion: v1.0
id: samtools_depth
doc: 'bam2depth [-r reg] [-q baseQthres] [-Q mapQthres] [-b in.bed] <in1.bam> [...]'

inputs:
- id: r
  inputBinding:
    position: 0
    prefix: -r
  type: string?
- id: q
  inputBinding:
    position: 0
    prefix: -q
  type: int?
- id: Q
  inputBinding:
    position: 0
    prefix: -Q
  type: int?
- id: b
  inputBinding:
    position: 0
    prefix: -b
  type: File?
- id: in_bam
  inputBinding:
    position: 1
  type:
    type: array
    items: File

outputs: []