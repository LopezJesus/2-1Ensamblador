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
    @    Aprender a reconocer como funciona la suma vectorial
    @
    
# include <stdio.h>
void main ( void )
{
  int i , suma;
  int vector [5]= {128 , 32 , 100 , -30 , 124};
  for ( suma = i = 0; i <5; i++ ){
    suma += vector [i ];
  }
  printf (" La suma es %d \n" , suma );
}
