  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  xorl %eax, %eax   #  1     0    2      OPC=xorl_r32_r32    
  setnbe %bl        #  2     0x2  3      OPC=setnbe_r8       
  xorb %bh, %al     #  3     0x5  2      OPC=xorb_r8_rh      
  movswl %bx, %ebp  #  4     0x7  3      OPC=movswl_r32_r16  
  xchgw %bp, %ax    #  5     0xa  3      OPC=xchgw_r16_r16   
  retq              #  6     0xd  1      OPC=retq            
                                                             
.size target, .-target
