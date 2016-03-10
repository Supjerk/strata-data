  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movswl %cx, %ecx    #  1     0    3      OPC=movswl_r32_r16   
  xchgw %cx, %bx      #  2     0x3  3      OPC=xchgw_r16_r16    
  movq %rcx, %rcx     #  3     0x6  3      OPC=movq_r64_r64     
  cmovnzl %ecx, %ebx  #  4     0x9  3      OPC=cmovnzl_r32_r32  
  retq                #  5     0xc  1      OPC=retq             
                                                                
.size target, .-target
