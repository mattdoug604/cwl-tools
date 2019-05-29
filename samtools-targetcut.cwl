#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- targetcut
class: CommandLineTool
cwlVersion: v1.0
doc: '>-Usage: samtools targetcut [-Q minQ] [-i inPen] [-0 em0] [-1 em1] [-2 em2]
  [-f ref] <in.bam>'
id: samtools_targetcut
inputs:
- doc: ref] <in.bam>
  id: f
  inputBinding:
    position: 0
    prefix: -f
  type: boolean?
