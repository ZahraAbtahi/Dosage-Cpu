Hi
Our assembler supports seven R-type commands and three I-type commands.
The input structure of our assembler for R-type commands is as follows:
  Op  rs rt rd    =>e.g:   and 3 4 5
And for e-typing commands except beq, it is as follows
  Op rs imd rt    =>e.g    lw 8 100 10
  for beq is:
    op rs rt imd  =>e.g:   beq 6 7 20
    
The output structure for R-type is:
  Opcode-rs-rt-rd-function
    
The output structure for I-type is:
  Opcode-rt-rt-imd
