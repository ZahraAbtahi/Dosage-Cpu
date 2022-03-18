# Phase 2 information and structure

## Intro
* [Our ISA](https://github.com/soniaabtahi1959/Dosage-Cpu/tree/main/phase1)
* Input structure
* Output structure

### Input structure:
* for R-type:  
    `Op  rs rt rd`  
    e.g: and 4 5 6  
* for I-type:  
    `Op  res imd rt`  
    e.g: lw 4 100 5

### Output structure:
* for R-type:
    #### hex: Opcode-rs-rt-rd-function  
* for I-type:
    #### hex: Opcode-rs-rt-imd
    
**NOTICE:** if you want use your own file for input at first create `inputfile.txt` file and enter your command line by line.
