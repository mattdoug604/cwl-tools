#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- fixmate
class: CommandLineTool
cwlVersion: v1.0
doc: '>-samtools fixmate <in.nameSrt.bam> <out.nameSrt.bam>'
id: samtools_fixmate
