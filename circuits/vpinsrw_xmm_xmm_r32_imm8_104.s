  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11          #  1     0     5      OPC=callq_label       
  vzeroall                                  #  2     0x5   3      OPC=vzeroall          
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label       
  movl %ebx, %ebx                           #  4     0xd   2      OPC=movl_r32_r32      
  cmpxchgw %ax, %r8w                        #  5     0xf   5      OPC=cmpxchgw_r16_r16  
  cmovnaw %bx, %r10w                        #  6     0x14  5      OPC=cmovnaw_r16_r16   
  callq .move_064_128_r10_r11_xmm1          #  7     0x19  5      OPC=callq_label       
  retq                                      #  8     0x1e  1      OPC=retq              
                                                                                        
.size target, .-target
