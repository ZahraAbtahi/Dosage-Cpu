# Phase 2 information and structure

## Intro
* [Our ISA](www.google.com)
* Input structure
* Output structure

### Input structure:
* for R-type:  
    `Op  rs rt rd`  
    e.g: and 4 5 6  
* for I-type:
    `Op  res imd rt`<br /> 
    e.g: lw 4 100 5

### Output structure:
* for R-type:
    #### hex: Opcode-rs-rt-rd-function  
* for I-type:
    #### hex: Opcode-rs-rt-imd  
