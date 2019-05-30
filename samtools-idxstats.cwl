#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- idxstats
class: CommandLineTool
cwlVersion: v1.0
id: samtools_idxstats
doc: samtools idxstats <in.bam>

inputs:
- id: in_bam
  inputBinding:
    position: 0
  type: File

outputs: []