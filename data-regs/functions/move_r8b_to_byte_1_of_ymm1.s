  .text
  .globl move_r8b_to_byte_1_of_ymm1
  .type move_r8b_to_byte_1_of_ymm1, @function
#! maybe-read { %r8b %xmm1 }
#! maybe-write { %xmm1 }
#! must-undef { %r14 %r15 %ymm14 %ymm15 }
.move_r8b_to_byte_1_of_ymm1:
  # ----------------------------------------------------------------------------
  # move r8b to the byte 1 of ymm1
  # ----------------------------------------------------------------------------
  #
  # zero all-ones xmm15
  movq $-0x1, %r15
  movq %r15, %xmm15
  vpbroadcastw %xmm15, %xmm15
  vbroadcastsd %xmm15, %ymm15

  # load 0xFF into ymm14
  vpxor %ymm14, %ymm14, %ymm14
  movq $0xff, %r14
  movq %r14, %xmm14
  pslldq $0x1, %xmm14
  vpxor %ymm15, %ymm14, %ymm14 # not %ymm14

  # load byte into ymm15
  vpxor %ymm15, %ymm15, %ymm15
  movq $0x0, %r15
  movb %r8b, %r15b
  movq %r15, %xmm15
  pslldq $0x1, %xmm15

  vpand %ymm14, %ymm1, %ymm1
  vpor %ymm15, %ymm1, %ymm1
  retq

.size move_r8b_to_byte_1_of_ymm1, .-move_r8b_to_byte_1_of_ymm1
  retq

