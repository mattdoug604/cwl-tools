#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- flagstat
class: CommandLineTool
cwlVersion: v1.0
id: samtools_flagstat
doc: samtools flagstat <in.bam>

inputs:
- id: in_bam
  inputBinding:
    position: 0
  type: File

outputs: []