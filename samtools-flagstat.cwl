#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- flagstat
class: CommandLineTool
cwlVersion: v1.0
id: samtools_flagstat
