  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                      
.target:                                    #        0    0      OPC=<label>                 
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label             
  vcvtsi2ssl %eax, %xmm2, %xmm1             #  2     0x5  4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  movsd %xmm3, %xmm1                        #  3     0x9  4      OPC=movsd_xmm_xmm           
  retq                                      #  4     0xd  1      OPC=retq                    
                                                                                             
.size target, .-target
