  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzbl %ch, %eax    #  1     0    3      OPC=movzbl_r32_rh    
  xchgb %ch, %al      #  2     0x3  2      OPC=xchgb_r8_rh      
  cmovnzl %ecx, %ebx  #  3     0x5  3      OPC=cmovnzl_r32_r32  
  retq                #  4     0x8  1      OPC=retq             
                                                                
.size target, .-target
