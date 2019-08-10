;; File              : test.asm
;; Author            : Ahmed Nasser <ahmednasser@gmail.com>
;; Date              : 09.08.2019
;; Last Modified Date: 09.08.2019
;; Last Modified By  : Ahmed Nasser <ahmednasser@gmail.com>

[ORG 0x100]
top:  mov ah,0x0a
      mov dx, buffer
      int 0x21
      mov ah, 0x09
      mov dl,message
      int 0x21
      jmp short top
message:
         db 10,'?',13,10,'$'
buffer:
