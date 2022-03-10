; led_on.s : switches on the arduino LED

; specify equivalent symbols
.equ SREG, 0x3f             ; Status register, address 0 x3f. See data sheet , p.11
.equ DDRB, 0x04
.equ PORTB, 0x05

; specify the start address
.org 0
; reset system status
main:   ldi r16, 0          ; set register r16 to zero
        out SREG, r16       ; copy contents of r16 to SREG, i.e., clear SREG.
        ldi r16, 0b00111111
        out DDRB, r16
        out PORTB, r16
mainloop: rjmp mainloop    ; jump back to mainloop address
