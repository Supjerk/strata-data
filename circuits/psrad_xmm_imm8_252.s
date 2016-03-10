  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vrsqrtps %xmm1, %xmm10   #  1     0     4      OPC=vrsqrtps_xmm_xmm   
  vpmovsxdq %xmm10, %ymm7  #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm  
  vcvtpd2ps %ymm7, %xmm9   #  3     0x9   4      OPC=vcvtpd2ps_xmm_ymm  
  movups %xmm9, %xmm1      #  4     0xd   4      OPC=movups_xmm_xmm     
  retq                     #  5     0x11  1      OPC=retq               
                                                                        
.size target, .-target
