#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- rmdup
class: CommandLineTool
cwlVersion: v1.0
doc: '>-Usage:  samtools rmdup [-sS] <input.srt.bam> <output.bam>'
id: samtools_rmdup
inputs:
- doc: '] <input.srt.bam> <output.bam>'
  id: sS
  inputBinding:
    position: 0
    prefix: -sS
  type: boolean?
- doc: rmdup for SE reads
  id: s
  inputBinding:
    position: 0
    prefix: -s
  type: boolean?
