  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label     
  movq $0x0, %r14          #  2     0x5   10     OPC=movq_r64_imm64  
  addq %r14, %rcx          #  3     0xf   3      OPC=addq_r64_r64    
  setnz %ah                #  4     0x12  3      OPC=setnz_rh        
  retq                     #  5     0x15  1      OPC=retq            
                                                                     
.size target, .-target
