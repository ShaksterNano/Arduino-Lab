.equ SREG, 0x3f ; define SREG label
.org 0
main:   ldi r16, 0 ; set register r16 to zero
        out SREG, r16 ; copy contents of r16 to SREG
mainloop: rjmp mainloop ; jump to mainloop address
