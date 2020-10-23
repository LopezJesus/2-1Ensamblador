    @@
    @@ Instituto Tecnologico de Tijuana
    @@ Depto de Sistemas y Computación
    @@ Ing. En Sistemas Computacionales
    @@   
    @@ Autor : Jesús Xavier López Galaz  @LopezJesus
    @@ Repositorio: http://github.com/LopezJesus
    @@ Fecha de elaboracion: 23/10/2020
    @@ 
    @
    @ Objetivo del programa:
    @    Aprender a reconocer como funciona la compilacion
    @
    
.data
var1: .asciz " %d\ 012 "

.text
.global _start
_start:  push { r4, lr }
		mov r4, #0
.L2: 	mov r1, r4
		ldr r0, =var1
		add r4, r4, #1
		bl printf
		cmp r4, #5
		bne .L2
		pop {r4, pc}
