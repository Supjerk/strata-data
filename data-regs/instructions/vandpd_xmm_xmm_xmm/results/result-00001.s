  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vmovdqu %xmm3, %xmm1        #  1     0    4      OPC=vmovdqu_xmm_xmm    
  vpand %xmm2, %xmm3, %xmm12  #  2     0x4  4      OPC=vpand_xmm_xmm_xmm  
  movupd %xmm12, %xmm1        #  3     0x8  5      OPC=movupd_xmm_xmm     
  retq                        #  4     0xd  1      OPC=retq               
                                                                          
.size target, .-target
