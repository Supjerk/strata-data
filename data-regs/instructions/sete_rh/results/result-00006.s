  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  shlw $0x1, %bx           #  2     0x5  3      OPC=shlw_r16_one  
  setpo %ah                #  3     0x8  3      OPC=setpo_rh      
  retq                     #  4     0xb  1      OPC=retq          
                                                                  
.size target, .-target
