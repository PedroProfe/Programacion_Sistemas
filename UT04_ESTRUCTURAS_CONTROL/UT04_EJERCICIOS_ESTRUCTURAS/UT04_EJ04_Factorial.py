#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:31:10 2019
"""

# Programa para el cálculo de factoriales

def factorialn(numero):
    producto=1
    if numero>1:
        for i in range(numero,0,-1):
            producto=producto*i
    return producto

while True:
    print("Introduzca un número: ", end="")
    numeron=int(input())
    factorial=factorialn(numeron)
    print("El factorial de",numeron," es: ",factorial)
    print("--------")
    print("Pulse 's' para calcular otro número.",end="")
    otronum=input()
    if otronum!="s": break

