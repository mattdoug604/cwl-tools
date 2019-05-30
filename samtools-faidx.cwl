#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- faidx
class: CommandLineTool
cwlVersion: v1.0
id: samtools_faidx
doc: faidx <in.fasta> [<reg> [...]]

inputs:
- id: in_fasta
  inputBinding:
    position: 0
  type: File
- id: region
  inputBinding:
    position: 1
  type: string?

outputs: []