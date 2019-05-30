#!/usr/bin/env cwl-runner

baseCommand:
- samtools
- mpileup
class: CommandLineTool
cwlVersion: v1.0
id: samtools_mpileup
doc: 'samtools mpileup [options] in1.bam [in2.bam [...]]'

inputs:
- doc: assume the quality is in the Illumina-1.3+ encoding
  id: '6'
  inputBinding:
    position: 0
    prefix: '-6'
  type: boolean?
- doc: count anomalous read pairs
  id: A
  inputBinding:
    position: 0
    prefix: -A
  type: boolean?
- doc: disable BAQ computation
  id: B
  inputBinding:
    position: 0
    prefix: -B
  type: boolean?
- doc: of input BAM files [null]
  id: b
  inputBinding:
    position: 0
    prefix: -b
  type: File?
- doc: parameter for adjusting mapQ; 0 to disable [0]
  id: C
  inputBinding:
    position: 0
    prefix: -C
  type: int?
- doc: max per-BAM depth to avoid excessive memory usage [250]
  id: d
  inputBinding:
    position: 0
    prefix: -d
  type: int?
- doc: extended BAQ for higher sensitivity but lower specificity
  id: E
  inputBinding:
    position: 0
    prefix: -E
  type: boolean?
- doc: faidx indexed reference sequence file [null]
  id: f
  inputBinding:
    position: 0
    prefix: -f
  type: File?
- doc: exclude read groups listed in FILE [null]
  id: G
  inputBinding:
    position: 0
    prefix: -G
  type: File?
- doc: of positions (chr pos) or regions (BED) [null]
  id: l
  inputBinding:
    position: 0
    prefix: -l
  type: File?
- doc: cap mapping quality at INT [60]
  id: M
  inputBinding:
    position: 0
    prefix: -M
  type: int?
- doc: region in which pileup is generated [null]
  id: r
  inputBinding:
    position: 0
    prefix: -r
  type: string?
- doc: ignore RG tags
  id: R
  inputBinding:
    position: 0
    prefix: -R
  type: boolean?
- doc: skip alignments with mapQ smaller than INT [0]
  id: q
  inputBinding:
    position: 0
    prefix: -q
  type: int?
- doc: skip bases with baseQ/BAQ smaller than INT [13]
  id: Q
  inputBinding:
    position: 0
    prefix: -Q
  type: int?
- doc: generate BCF output (genotype likelihoods)
  id: u
  inputBinding:
    position: 0
    prefix: -u
  type: boolean?
- doc: Phred-scaled gap extension seq error probability [20]
  id: e
  inputBinding:
    position: 0
    prefix: -e
  type: int?
- doc: minimum fraction of gapped reads for candidates [0.002]
  id: F
  inputBinding:
    position: 0
    prefix: -F
  type: float?
- doc: coefficient for homopolymer errors [100]
  id: h
  inputBinding:
    position: 0
    prefix: -h
  type: int?
- doc: do not perform indel calling
  id: I
  inputBinding:
    position: 0
    prefix: -I
  type: boolean?
- doc: max per-sample depth for INDEL calling [250]
  id: L
  inputBinding:
    position: 0
    prefix: -L
  type: int?
- doc: minimum gapped reads for indel candidates [1]
  id: m
  inputBinding:
    position: 0
    prefix: -m
  type: int?
- doc: Phred-scaled gap open sequencing error probability [40]
  id: o
  inputBinding:
    position: 0
    prefix: -o
  type: int?
- doc: comma separated list of platforms for indels [all]
  id: P
  inputBinding:
    position: 0
    prefix: -P
  type: string?
- id: in_bam
  inputBinding:
    position: 1
  type:
    type: array
    items: File

outputs: []