#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- merge
class: CommandLineTool
cwlVersion: v1.0
doc: '>-Usage:   samtools merge [-nr] [-h inh.sam] <out.bam> <in1.bam> <in2.bam> [...]'
id: samtools_merge
inputs:
- doc: inh.sam] <out.bam> <in1.bam> <in2.bam> [...]
  id: nr
  inputBinding:
    position: 0
    prefix: -nr
  type: boolean?
- doc: sort by read names
  id: n
  inputBinding:
    position: 0
    prefix: -n
  type: boolean?
- doc: attach RG tag (inferred from file names)
  id: r
  inputBinding:
    position: 0
    prefix: -r
  type: boolean?
- doc: uncompressed BAM output
  id: u
  inputBinding:
    position: 0
    prefix: -u
  type: boolean?
- doc: overwrite the output BAM if exist
  id: f
  inputBinding:
    position: 0
    prefix: -f
  type: boolean?
- doc: compress level 1
  id: '1'
  inputBinding:
    position: 0
    prefix: '-1'
  type: boolean?
- doc: merge file in the specified region STR [all]
  id: R
  inputBinding:
    position: 0
    prefix: -R
  type: string?
- doc: copy the header in FILE to <out.bam> [in1.bam]
  id: h
  inputBinding:
    position: 0
    prefix: -h
  type: File?
