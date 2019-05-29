#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- reheader
class: CommandLineTool
cwlVersion: v1.0
doc: '>-Usage: samtools reheader <in.header.sam> <in.bam>'
id: samtools_reheader
