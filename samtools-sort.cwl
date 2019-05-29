#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- sort
class: CommandLineTool
cwlVersion: v1.0
doc: '>-Usage: samtools sort [-on] [-m <maxMem>] <in.bam> <out.prefix>'
id: samtools_sort
inputs:
- doc: <maxMem>] <in.bam> <out.prefix>
  id: on
  inputBinding:
    position: 0
    prefix: -on
  type: boolean?
