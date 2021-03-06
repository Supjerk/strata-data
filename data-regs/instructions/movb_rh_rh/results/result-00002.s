  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rdx, %rdx  #  1     0    3      OPC=xorq_r64_r64  
  xaddb %bh, %dl   #  2     0x3  3      OPC=xaddb_r8_rh   
  movb %dl, %ah    #  3     0x6  2      OPC=movb_rh_r8    
  retq             #  4     0x8  1      OPC=retq          
                                                          
.size target, .-target
