cwlVersion: v1.0
class: Workflow
# Taken from: https://github.com/zhangb1/gdc-workflow-cwl-v1/blob/master/fastq2cram-workflow.cwl
id: fastq2cram
label: fastq2cram
inputs:
  - id: reference
    type: File?
    'sbg:x': 78.37765892459501
    'sbg:y': -136.8996442549593
  - id: output_bam
    type: string?
    'sbg:exposed': true
  - id: output_cram
    type: string?
    'sbg:exposed': true
  - id: read_group
    type: string?
    'sbg:exposed': true
  - id: input2
    type: File?
    'sbg:x': -133.16793823242188
    'sbg:y': -19.701574325561523
  - id: input1
    type: File?
    'sbg:x': -247.71234130859375
    'sbg:y': 134.93338012695312
outputs:
  - id: output
    outputSource:
      - bam2cram/output
    type: File?
    'sbg:x': 867.6041259765625
    'sbg:y': 37.68014144897461
  - id: output_1
    outputSource:
      - picard_markduplicates/output
    type: File?
    'sbg:x': 703.6041259765625
    'sbg:y': 199.79299926757812
steps:
  - id: picard_bam_sort
    in:
      - id: input_bam
        source:
          - bwa_mem/output_1
      - id: output_bam
        default: sample.sort.bam
    out:
      - id: output
    run: /Users/zhangb1/Documents/Tools/CWL.V1/GDC/tools/picard-bam-sort.cwl
    label: picard-bam-sort
    'sbg:x': 330.38558620876734
    'sbg:y': 86.0821516248915
  - id: picard_markduplicates
    in:
      - id: input_bam
        source:
          - picard_bam_sort/output
      - id: output_bam
        source:
          - output_bam
    out:
      - id: output
    run: /Users/zhangb1/Documents/Tools/CWL.V1/GDC/tools/picard-markduplicates.cwl
    label: picard-MarkDuplicates
    'sbg:x': 529.472669813368
    'sbg:y': 117.65579393174913
  - id: bam2cram
    in:
      - id: input_bam
        source:
          - picard_markduplicates/output
      - id: reference
        source:
          - reference
      - id: output_cram
        source:
          - output_cram
    out:
      - id: output
    run: /Users/zhangb1/Documents/Tools/CWL.V1/GDC/tools/bam2cram.cwl
    label: bam2cram
    'sbg:x': 664.7517020756547
    'sbg:y': 44.40993377363144
  - id: bwa_mem
    in:
      - id: read_group
        source:
          - read_group
      - id: reference
        source:
          - reference
      - id: input1
        source:
          - input1
      - id: output
        default: sample.bam
      - id: input2
        source:
          - input2
    out:
      - id: output_1
    run: /Users/zhangb1/Documents/Tools/CWL.V1/GDC/tools/bwa-mem.cwl
    label: bwa-mem
    'sbg:x': 180.05976485693787
    'sbg:y': 45.29557418823242

