  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmulsd %xmm2, %xmm1, %xmm4                      #  2     0x5   4      OPC=vmulsd_xmm_xmm_xmm       
  vfmadd213pd %xmm4, %xmm8, %xmm8                 #  3     0x9   5      OPC=vfmadd213pd_xmm_xmm_xmm  
  movddup %xmm8, %xmm1                            #  4     0xe   5      OPC=movddup_xmm_xmm          
  retq                                            #  5     0x13  1      OPC=retq                     
                                                                                                     
.size target, .-target
