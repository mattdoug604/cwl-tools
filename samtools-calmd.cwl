#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- calmd
class: CommandLineTool
cwlVersion: v1.0
id: samtools_calmd
inputs:
- doc: "'"
  id: '?'
  inputBinding:
    position: 0
    prefix: -?
  type: boolean?
