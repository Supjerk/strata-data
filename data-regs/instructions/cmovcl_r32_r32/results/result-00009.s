  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  setnae %bpl          #  1     0    4      OPC=setnae_r8         
  negb %bpl            #  2     0x4  3      OPC=negb_r8           
  cmovnael %ecx, %ebx  #  3     0x7  3      OPC=cmovnael_r32_r32  
  retq                 #  4     0xa  1      OPC=retq              
                                                                  
.size target, .-target
