#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- reheader
class: CommandLineTool
cwlVersion: v1.0
id: samtools_reheader
doc: 'samtools reheader <in.header.sam> <in.bam>'

inputs:
- id: in_header_sam
  inputBinding:
    position: 0
  type: File
- id: in_bam
  inputBinding:
    position: 1
  type: File

outputs: []