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
    @    Aprender a reconocer como funciona el codigo de ensamblador
    @
    
.data

var1: .asciz " La suma es %d \n"
var2: .word 1600000000, - 100, 800000000, - 50, 200


.text
.global _start

/* Salvamos registros */
_start: push {r4,lr}

/* Inicializamos variables y apuntamos r2 a var2 */
		mov r0, #5
		mov r1, #0
		ldr r2, =var2

/* Bucle que hace la suma */
bucle : ldr r3, [r2] , #4
		add r1, r1, r3
		subs r0, r0, #1
		bne bucle

/* Imprimimos resultado */
		ldr r0, =var1
		bl printf

/* Recuperamos registros y salimos */
		pop {r4, lr}
		bx lr
