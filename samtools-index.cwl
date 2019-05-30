#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- index
class: CommandLineTool
cwlVersion: v1.0
id: samtools_index
doc: samtools index <in.bam> [out.index]

inputs:
- id: in_bam
  inputBinding:
    position: 0
  type: File
- id: out_index
  inputBinding:
    position: 1
  type: string?

outputs: []