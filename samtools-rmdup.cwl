#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- rmdup
class: CommandLineTool
cwlVersion: v1.0
doc: 'samtools rmdup [-sS] <input.srt.bam> <output.bam>'
id: samtools_rmdup

inputs:
- doc: rmdup for SE reads
  id: s
  inputBinding:
    position: 0
    prefix: -s
  type: boolean?
- doc: treat PE reads as SE in rmdup (force -s)
  id: S
  inputBinding:
    position: 0
    prefix: -S
  type: boolean?
- id: input_srt_bam
  inputBinding:
    position: 1
  type: File
- id: output_bam
  inputBinding:
    position: 2
  type: File

outputs: []