  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movsldup %xmm1, %xmm8  #  1     0    5      OPC=movsldup_xmm_xmm  
  vmovd %xmm8, %ebx      #  2     0x5  4      OPC=vmovd_r32_xmm     
  retq                   #  3     0x9  1      OPC=retq              
                                                                    
.size target, .-target
