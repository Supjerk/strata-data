  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmovshdup %xmm2, %xmm12                         #  1     0     4      OPC=vmovshdup_xmm_xmm   
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  unpcklps %xmm11, %xmm8                          #  3     0x9   4      OPC=unpcklps_xmm_xmm    
  vmovsd %xmm8, %xmm12, %xmm1                     #  4     0xd   5      OPC=vmovsd_xmm_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq                
                                                                                                
.size target, .-target
