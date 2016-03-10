  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  vmovdqu %xmm1, %xmm2     #  1     0    4      OPC=vmovdqu_xmm_xmm     
  vcvttps2dq %ymm2, %ymm0  #  2     0x4  4      OPC=vcvttps2dq_ymm_ymm  
  movd %xmm0, %ebx         #  3     0x8  4      OPC=movd_r32_xmm        
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
