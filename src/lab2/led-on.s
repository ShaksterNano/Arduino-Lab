; Switches on the Arduino LED

; Specify equivalent symbols
.equ SREG, 0x3f             ; Status register, address 0 x3f. See data sheet , p.11
.equ DDRB, 0x04
.equ PORTB, 0x05

; Specify the start address
.org 0
; Reset system status
main:   ldi r16, 0          ; Set register r16 to zero
        out SREG, r16       ; Copy contents of r16 to SREG, i.e., clear SREG.
        ldi r16, 0b00111111 ; Turns on pins D8 - D13
        out DDRB, r16
        out PORTB, r16
mainloop: rjmp mainloop     ; Jump back to mainloop address
