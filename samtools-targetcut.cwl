#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- targetcut
class: CommandLineTool
cwlVersion: v1.0
doc: 'samtools targetcut [-Q minQ] [-i inPen] [-0 em0] [-1 em1] [-2 em2] [-f ref] <in.bam>'
id: samtools_targetcut

inputs:
- id: Q
  inputBinding:
    position: 0
    prefix: -Q
  type: int?
- id: i
  inputBinding:
    position: 0
    prefix: -i
  type: string?
- id: 0
  inputBinding:
    position: 0
    prefix: -0
  type: string?
- id: 1
  inputBinding:
    position: 0
    prefix: -1
  type: string?
- id: 2
  inputBinding:
    position: 0
    prefix: -2
  type: string?
- id: f
  inputBinding:
    position: 0
    prefix: -f
  type: File?
- id: in_bam
  inputBinding:
    position: 1
  type: File

outputs: []