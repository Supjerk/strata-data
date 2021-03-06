  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP   Bytes  Opcode                 
.target:                 #        0     0      OPC=<label>            
  vmovmskpd %xmm1, %ecx  #  1     0     4      OPC=vmovmskpd_r32_xmm  
  xaddb %ch, %ch         #  2     0x4   3      OPC=xaddb_rh_rh        
  movq $0x4, %rbx        #  3     0x7   10     OPC=movq_r64_imm64     
  cmovnol %ecx, %ebx     #  4     0x11  3      OPC=cmovnol_r32_r32    
  retq                   #  5     0x14  1      OPC=retq               
                                                                      
.size target, .-target
