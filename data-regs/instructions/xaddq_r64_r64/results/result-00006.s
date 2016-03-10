  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  addq %rbx, %rcx   #  1     0    3      OPC=addq_r64_r64   
  xchgq %rbx, %rcx  #  2     0x3  3      OPC=xchgq_r64_r64  
  xchgb %bl, %bl    #  3     0x6  2      OPC=xchgb_r8_r8    
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
