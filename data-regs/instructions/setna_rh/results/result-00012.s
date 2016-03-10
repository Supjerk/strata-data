  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rbx  #  1     0    5      OPC=callq_label  
  setbe %ah                #  2     0x5  3      OPC=setbe_rh     
  addb %bh, %ah            #  3     0x8  2      OPC=addb_rh_rh   
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
