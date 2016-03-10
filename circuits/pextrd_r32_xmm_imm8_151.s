  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP  Bytes  Opcode                 
.target:                                    #        0    0      OPC=<label>            
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0    5      OPC=callq_label        
  vmovmskpd %xmm1, %ebx                     #  2     0x5  4      OPC=vmovmskpd_r32_xmm  
  xaddl %ebx, %r9d                          #  3     0x9  4      OPC=xaddl_r32_r32      
  retq                                      #  4     0xd  1      OPC=retq               
                                                                                        
.size target, .-target
