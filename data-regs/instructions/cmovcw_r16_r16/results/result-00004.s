  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwl %bx, %eax    #  1     0    3      OPC=movzwl_r32_r16   
  cmovncl %eax, %ecx  #  2     0x3  3      OPC=cmovncl_r32_r32  
  movswq %cx, %rbx    #  3     0x6  4      OPC=movswq_r64_r16   
  retq                #  4     0xa  1      OPC=retq             
                                                                
.size target, .-target
