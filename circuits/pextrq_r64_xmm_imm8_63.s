  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                          #  Line  RIP  Bytes  Opcode           
.target:                                        #        0    0      OPC=<label>      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label  
  callq .move_032_064_r12d_r13d_rbx             #  2     0x5  5      OPC=callq_label  
  orb %bh, %bh                                  #  3     0xa  2      OPC=orb_rh_rh    
  retq                                          #  4     0xc  1      OPC=retq         
                                                                                      
.size target, .-target
