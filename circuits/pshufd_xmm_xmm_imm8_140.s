  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vmovlhps %xmm2, %xmm12, %xmm15       #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm     
  vpunpckhdq %xmm2, %xmm15, %xmm9      #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  movss %xmm9, %xmm13                  #  4     0xd   5      OPC=movss_xmm_xmm            
  vpunpcklqdq %xmm9, %xmm13, %xmm10    #  5     0x12  5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movups %xmm10, %xmm1                 #  6     0x17  4      OPC=movups_xmm_xmm           
  retq                                 #  7     0x1b  1      OPC=retq                     
                                                                                          
.size target, .-target
