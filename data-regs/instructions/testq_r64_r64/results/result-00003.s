  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  andnq %rcx, %rbx, %rsi  #  1     0    5      OPC=andnq_r64_r64_r64  
  cmpq %rsi, %rcx         #  2     0x5  3      OPC=cmpq_r64_r64       
  retq                    #  3     0x8  1      OPC=retq               
                                                                      
.size target, .-target
