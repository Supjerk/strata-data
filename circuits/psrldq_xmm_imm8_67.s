  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  xorpd %xmm15, %xmm15    #  1     0    5      OPC=xorpd_xmm_xmm     
  movsldup %xmm15, %xmm1  #  2     0x5  5      OPC=movsldup_xmm_xmm  
  retq                    #  3     0xa  1      OPC=retq              
                                                                     
.size target, .-target
