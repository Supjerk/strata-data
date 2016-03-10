  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  andb %bl, %bh                      #  1     0     2      OPC=andb_rh_r8          
  vmaxss %xmm2, %xmm2, %xmm1         #  2     0x2   4      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_032_016_ebx_r8w_r9w    #  3     0x6   5      OPC=callq_label         
  callq .move_r8b_to_byte_9_of_ymm1  #  4     0xb   5      OPC=callq_label         
  retq                               #  5     0x10  1      OPC=retq                
                                                                                   
.size target, .-target
