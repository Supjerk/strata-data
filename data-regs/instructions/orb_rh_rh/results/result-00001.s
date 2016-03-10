  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  xorb %cl, %cl       #  1     0     2      OPC=xorb_r8_r8       
  callq .clear_sf     #  2     0x2   5      OPC=callq_label      
  movzbl %bh, %esi    #  3     0x7   3      OPC=movzbl_r32_rh    
  setng %dl           #  4     0xa   3      OPC=setng_r8         
  cmovbeq %rsi, %rdx  #  5     0xd   4      OPC=cmovbeq_r64_r64  
  orb %dl, %ah        #  6     0x11  2      OPC=orb_rh_r8        
  clc                 #  7     0x13  1      OPC=clc              
  retq                #  8     0x14  1      OPC=retq             
                                                                 
.size target, .-target
