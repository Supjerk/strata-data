  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  punpckhqdq %xmm1, %xmm1  #  1     0    4      OPC=punpckhqdq_xmm_xmm  
  movq %xmm1, %rbx         #  2     0x4  5      OPC=movq_r64_xmm        
  movzwl %bx, %ebx         #  3     0x9  3      OPC=movzwl_r32_r16      
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target