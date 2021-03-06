  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  movzwq %ax, %rbx                          #  2     0x5   4      OPC=movzwq_r64_r16  
  callq .move_byte_14_of_ymm1_to_r8b        #  3     0x9   5      OPC=callq_label     
  bswap %r9d                                #  4     0xe   3      OPC=bswap_r32       
  callq .move_008_016_r8b_r9b_bx            #  5     0x11  5      OPC=callq_label     
  retq                                      #  6     0x16  1      OPC=retq            
                                                                                      
.size target, .-target
