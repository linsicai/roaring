// +build amd64,!appengine

TEXT ·countTrailingZerosAsm(SB),$0-16
MOVQ    x+0(FP),DI
//  TZCNTQ  DI,AX
BYTE $0xf3; BYTE $0x48; BYTE $0x0f; BYTE $0xbc; BYTE $0xC7
MOVQ    AX, ret+8(FP)
RET
