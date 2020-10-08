#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:51:30 2019
"""
#Cálculo de números primos
while True:
    print("Introduzca un número: ",end="")
    num=int(input())
    print("Lista de números primos hasta ",num,":")

    for i in range(1,num+1):
        #Recorremos todos los valores desde el 1 hasta el número (incluido)
        #y los dividimos entre todos los valores desde 2 hasta el número -1
        #porque sabemos que todo número es divisible por 1 y por sí mismo
        #si encontramos un valor que dé resto 0, es que es divisible
        #y por tanto, ya no es primo.
        primo=True
        for j in range(2,i):
            if i%j==0:
                primo=False
                #ya no hace falta seguir en el bucle for, hacemos break
                break
        if primo:
            #si estamos aquí, hemos hecho todas las divisiones
            #sin encontrar ningún valor divisible. Este número es PRIMO
            print(i," ",end="")
    print("")
    print("------")
    print("Introduzca 's' para calcular otro.")
    otronum=input()
    if otronum!="s": break

       
