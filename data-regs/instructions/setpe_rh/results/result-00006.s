  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label     
  movzwl %bx, %ebx         #  2     0x5   3      OPC=movzwl_r32_r16  
  callq .set_szp_for_ebx   #  3     0x8   5      OPC=callq_label     
  setnp %ah                #  4     0xd   3      OPC=setnp_rh        
  retq                     #  5     0x10  1      OPC=retq            
                                                                     
.size target, .-target
