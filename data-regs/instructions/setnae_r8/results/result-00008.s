  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x0, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  adcb %bl, %bl    #  2     0xa  2      OPC=adcb_r8_r8      
  xaddb %bh, %bl   #  3     0xc  3      OPC=xaddb_r8_rh     
  retq             #  4     0xf  1      OPC=retq            
                                                            
.size target, .-target
