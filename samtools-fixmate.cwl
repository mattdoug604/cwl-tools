#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- fixmate
class: CommandLineTool
cwlVersion: v1.0
id: samtools_fixmate
doc: samtools fixmate <in.nameSrt.bam> <out.nameSrt.bam>

inputs:
- id: in_nameSrt_bam
  inputBinding:
    position: 0
  type: File
- id: out_nameSrt_bam
  inputBinding:
    position: 1
  type: File

outputs: []