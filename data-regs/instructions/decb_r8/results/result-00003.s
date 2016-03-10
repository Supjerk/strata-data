  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  xorq %rax, %rax                 #  1     0     3      OPC=xorq_r64_r64    
  movq $0xffffffffffffffff, %rdi  #  2     0x3   10     OPC=movq_r64_imm64  
  adcb %dil, %bl                  #  3     0xd   3      OPC=adcb_r8_r8      
  retq                            #  4     0x10  1      OPC=retq            
                                                                            
.size target, .-target
