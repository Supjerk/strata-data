  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovshdup %xmm10, %xmm10                        #  2     0x5   5      OPC=vmovshdup_xmm_xmm       
  callq .move_64_128_xmm10_xmm11_xmm1             #  3     0xa   5      OPC=callq_label             
  vpunpckhdq %xmm1, %xmm2, %xmm14                 #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movlhps %xmm14, %xmm1                           #  5     0x13  4      OPC=movlhps_xmm_xmm         
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
