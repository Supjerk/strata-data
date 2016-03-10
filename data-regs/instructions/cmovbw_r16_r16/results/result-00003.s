  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  movq $0xfffffffffffffff9, %rbp  #  1     0     10     OPC=movq_r64_imm64     
  movslq %ebp, %r8                #  2     0xa   3      OPC=movslq_r64_r32     
  cmovcw %cx, %bx                 #  3     0xd   4      OPC=cmovcw_r16_r16     
  andnl %ebp, %r8d, %r13d         #  4     0x11  5      OPC=andnl_r32_r32_r32  
  subw %r13w, %bx                 #  5     0x16  4      OPC=subw_r16_r16       
  retq                            #  6     0x1a  1      OPC=retq               
                                                                               
.size target, .-target
