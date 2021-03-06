  .text
  .globl move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7
  .type move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7, @function
#! maybe-read { %xmm3 }
#! maybe-write { %xmm4 %xmm5 %xmm6 %xmm7 }
#! must-undef { }
.move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7:
  # ----------------------------------------------------------------------------
  # moves the lowest 32 bits of xmm3 to xmm4, the next 32 bits to
  # xmm5, the next to xmm6 and the highest 32 bits to xmm7.
  # ----------------------------------------------------------------------------
  #
  xorpd %xmm4, %xmm4
  xorpd %xmm5, %xmm5
  xorpd %xmm6, %xmm6
  xorpd %xmm7, %xmm7
  movss %xmm3, %xmm4
  shufps $0x39, %xmm3, %xmm3
  movss %xmm3, %xmm5
  shufps $0x39, %xmm3, %xmm3
  movss %xmm3, %xmm6
  shufps $0x39, %xmm3, %xmm3
  movss %xmm3, %xmm7
  shufps $0x39, %xmm3, %xmm3
  retq

.size move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7, .-move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7