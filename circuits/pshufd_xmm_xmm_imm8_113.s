  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm2, %xmm9, %xmm4                  #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vcvttpd2dq %xmm10, %xmm8                        #  3     0x9   5      OPC=vcvttpd2dq_xmm_xmm       
  vfmadd132pd %xmm9, %xmm11, %xmm9                #  4     0xe   5      OPC=vfmadd132pd_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x13  5      OPC=callq_label              
  orps %xmm4, %xmm1                               #  6     0x18  3      OPC=orps_xmm_xmm             
  retq                                            #  7     0x1b  1      OPC=retq                     
                                                                                                     
.size target, .-target
