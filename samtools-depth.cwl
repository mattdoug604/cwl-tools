#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- depth
class: CommandLineTool
cwlVersion: v1.0
id: samtools_depth
inputs:
- doc: in.bed] <in1.bam> [...]
  id: b
  inputBinding:
    position: 0
    prefix: -b
  type: boolean?
