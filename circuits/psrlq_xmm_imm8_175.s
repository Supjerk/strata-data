  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  pandn %xmm1, %xmm1              #  1     0    4      OPC=pandn_xmm_xmm           
  vpunpckldq %xmm1, %xmm1, %xmm3  #  2     0x4  4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckldq %xmm3, %xmm1          #  3     0x8  4      OPC=punpckldq_xmm_xmm       
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target
