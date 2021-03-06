  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d      #  1     0     5      OPC=callq_label              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label              
  vhaddpd %xmm7, %xmm2, %xmm1                   #  3     0xa   4      OPC=vhaddpd_xmm_xmm_xmm      
  movd %r9d, %xmm7                              #  4     0xe   5      OPC=movd_xmm_r32             
  vfmadd132sd %xmm6, %xmm3, %xmm4               #  5     0x13  5      OPC=vfmadd132sd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  6     0x18  5      OPC=callq_label              
  retq                                          #  7     0x1d  1      OPC=retq                     
                                                                                                   
.size target, .-target
