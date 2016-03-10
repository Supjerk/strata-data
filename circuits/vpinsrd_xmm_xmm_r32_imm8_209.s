  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label      
  vmovd %r8d, %xmm1                               #  2     0x5   5      OPC=vmovd_xmm_r32    
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label      
  movd %ebx, %xmm9                                #  4     0xf   5      OPC=movd_xmm_r32     
  vmovdqa %ymm1, %ymm10                           #  5     0x14  4      OPC=vmovdqa_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label      
  retq                                            #  7     0x1d  1      OPC=retq             
                                                                                             
.size target, .-target
