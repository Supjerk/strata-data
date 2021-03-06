  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm2, %xmm11  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovaps %ymm11, %ymm12            #  2     0x4  5      OPC=vmovaps_ymm_ymm          
  movups %xmm12, %xmm1              #  3     0x9  4      OPC=movups_xmm_xmm           
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
