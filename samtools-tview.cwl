#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- tview
class: CommandLineTool
cwlVersion: v1.0
id: samtools_tview
