  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm15                       #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  vmovups %xmm15, %xmm1                         #  2     0x5   5      OPC=vmovups_xmm_xmm    
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  movzwq %r13w, %rbx                            #  4     0xf   4      OPC=movzwq_r64_r16     
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
