#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- index
class: CommandLineTool
cwlVersion: v1.0
id: samtools_index
