  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzwl %cx, %edi     #  1     0    3      OPC=movzwl_r32_r16    
  xchgl %edi, %edi     #  2     0x3  2      OPC=xchgl_r32_r32     
  cmovnael %edi, %ebx  #  3     0x5  3      OPC=cmovnael_r32_r32  
  retq                 #  4     0x8  1      OPC=retq              
                                                                  
.size target, .-target
