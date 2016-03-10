  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label    
  movzbl %cl, %eax         #  2     0x5  3      OPC=movzbl_r32_r8  
  xorb %ah, %cl            #  3     0x8  2      OPC=xorb_r8_rh     
  setnp %ah                #  4     0xa  3      OPC=setnp_rh       
  retq                     #  5     0xd  1      OPC=retq           
                                                                   
.size target, .-target
