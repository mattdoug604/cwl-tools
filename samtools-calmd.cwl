#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- calmd
class: CommandLineTool
cwlVersion: v1.0
id: samtools_calmd
doc: samtools fillmd [-eubrS] <aln.bam> <ref.fasta>

inputs:
- id: e
  inputBinding:
    position: 0
    prefix: -e
  type: boolean?
- id: u
  inputBinding:
    position: 0
    prefix: -u
  type: boolean?
- id: b
  inputBinding:
    position: 0
    prefix: -b
  type: boolean?
- id: r
  inputBinding:
    position: 0
    prefix: -r
  type: boolean?
- id: S
  inputBinding:
    position: 0
    prefix: -S
  type: boolean?
- id: aln_bam
  inputBinding:
    position: 1
  type: File
- id: ref_fasta
  inputBinding:
    position: 2
  type: File

outputs: []