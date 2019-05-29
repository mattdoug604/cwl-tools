#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- idxstats
class: CommandLineTool
cwlVersion: v1.0
id: samtools_idxstats
