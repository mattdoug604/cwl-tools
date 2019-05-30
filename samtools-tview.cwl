#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- tview
class: CommandLineTool
cwlVersion: v1.0
doc: 'bamtk tview <aln.bam> [ref.fasta]'
id: samtools_tview

inputs:
- id: aln_bam
  inputBinding:
    position: 0
  type: File
- id: ref_fasta
  inputBinding:
    position: 1
  type: File?

outputs: []