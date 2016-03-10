  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  xchgb %bh, %bh    #  1     0    2      OPC=xchgb_rh_rh      
  cmovnbw %cx, %bx  #  2     0x2  4      OPC=cmovnbw_r16_r16  
  retq              #  3     0x6  1      OPC=retq             
                                                              
.size target, .-target
