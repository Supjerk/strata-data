  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vmovd %ebx, %xmm7                  #  1     0     4      OPC=vmovd_xmm_r32       
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  vcvtdq2pd %ymm7, %ymm1             #  3     0x9   4      OPC=vcvtdq2pd_ymm_ymm   
  punpcklqdq %xmm9, %xmm1            #  4     0xd   5      OPC=punpcklqdq_xmm_xmm  
  retq                               #  5     0x12  1      OPC=retq                
                                                                                   
.size target, .-target
