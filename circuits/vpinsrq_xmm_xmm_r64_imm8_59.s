  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  movq %rbx, %xmm13           #  1     0    5      OPC=movq_xmm_r64          
  vbroadcastsd %xmm13, %ymm9  #  2     0x5  5      OPC=vbroadcastsd_ymm_xmm  
  vmovsd %xmm2, %xmm9, %xmm1  #  3     0xa  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
