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

var1 :  .word   3
var2 :  .word   4
var3 :  .word   0x1234

.text
.global main

main:   ldr   r1, puntero_var1    /* r1 <- & var1 */
        ldr   r1, [ r1 ]          /* r1 <- *r1 */
        ldr   r2, puntero_var2    /* r2 <- & var2 */
        ldr   r2, [ r2 ]          /* r2 <- *r2 */
        ldr   r3, puntero_var3    /* r3 <- & var3 */
        add   r0, r1, r2          /* r0 <- r1 + r2 */
        str   r0, [ r3 ]          /* *r3 <- r0 */
        bx    lr
        
puntero_var1:   .word   var1
puntero_var2:   .word   var2
puntero_var3:   .word   var3
