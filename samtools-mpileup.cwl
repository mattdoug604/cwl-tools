#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- mpileup
class: CommandLineTool
cwlVersion: v1.0
id: samtools_mpileup
