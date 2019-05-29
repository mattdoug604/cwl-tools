#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- cat
class: CommandLineTool
cwlVersion: v1.0
id: samtools_cat
inputs:
- doc: "'."
  id: help
  inputBinding:
    position: 0
    prefix: -help
  type: boolean?
