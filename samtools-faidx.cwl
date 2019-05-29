#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- faidx
class: CommandLineTool
cwlVersion: v1.0
id: samtools_faidx
inputs:
- doc: ''
  id: help
  inputBinding:
    position: 0
    prefix: -help
  type: boolean
