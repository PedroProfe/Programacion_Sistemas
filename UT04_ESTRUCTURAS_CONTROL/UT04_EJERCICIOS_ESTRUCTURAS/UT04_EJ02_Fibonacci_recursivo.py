#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Wed Jan 22 00:08:33 2020
"""

#Serie de Fibonacci recursiva

def fibo(numero):
    if numero==1:
        return 1
    elif numero==2:
        return 1
    else:
        return fibo(numero-1)+fibo(numero-2)

valor=int(input("Introduzca un valor: "))

for i in range(1,valor+1):
    print(fibo(i),end=" ")

