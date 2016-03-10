  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                     
.target:                            #        0     0      OPC=<label>                
  vmovd %ebx, %xmm14                #  1     0     4      OPC=vmovd_xmm_r32          
  vmovshdup %xmm1, %xmm10           #  2     0x4   4      OPC=vmovshdup_xmm_xmm      
  vpbroadcastd %xmm14, %ymm11       #  3     0x8   5      OPC=vpbroadcastd_ymm_xmm   
  vunpckhps %ymm10, %ymm11, %ymm14  #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm  
  punpcklqdq %xmm14, %xmm1          #  5     0x12  5      OPC=punpcklqdq_xmm_xmm     
  retq                              #  6     0x17  1      OPC=retq                   
                                                                                     
.size target, .-target
