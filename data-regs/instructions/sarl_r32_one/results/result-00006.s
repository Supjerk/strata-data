  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  movslq %ebx, %rbx       #  1     0    3      OPC=movslq_r64_r32    
  sarq $0x1, %rbx         #  2     0x3  3      OPC=sarq_r64_one      
  callq .set_szp_for_rbx  #  3     0x6  5      OPC=callq_label       
  cmovnbel %ebx, %ebx     #  4     0xb  3      OPC=cmovnbel_r32_r32  
  retq                    #  5     0xe  1      OPC=retq              
                                                                     
.size target, .-target
