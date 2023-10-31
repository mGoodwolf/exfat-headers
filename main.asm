jmp 0x00
JmpBoot:       
  jmp EB 76 90
jmp 0x03
fsn:       "EXFAT   "

jmp 0x0b
          db 0
jmp 0x40
PartOff:    db 512-($-$$) 
jmp 0x48
volumeLEN:  db 8388608
jmp 0x50
FATO:
  mov al, 512-($-$$)
  times 512
  jmp al
  db PartOff
jmp 0x54
LENinSEC:   db 4
jmp 0x058
CHO:
  jmp 0x5e

jmp 0x05C
CC:
  db 393216
jmp 0x60
dw 0x5e
jmp 0x064
db 12h, 34h, 56h, 78h
