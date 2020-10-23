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


.text
.global main

main:   mov       r2, # 0b11110000      /* r2 <- 11110000 */
        mov       r3, # 0b10101010      /* r3 <- 10101010 */
        and       r0, r2, r3            /* r0 <- r2 AND r3 */
        orr       r1, r2, r3            /* r1 <- r2 OR r3 */
        mvn       r4, r0                /* r4 <- NOT r0 */
        mov       r0, # 0x80000000
        tst       r0, # 0x80000000
        tst       r0, # 0x40000000
        bx        lr
