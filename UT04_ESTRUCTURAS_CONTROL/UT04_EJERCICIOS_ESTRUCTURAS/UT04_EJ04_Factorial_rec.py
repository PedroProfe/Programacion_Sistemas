#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:31:10 2019
"""

# Programa para el cálculo de factoriales de forma recursiva

def factorialn(numero):
    if numero<2:
        producto=1
    else:
        producto=numero*factorialn(numero-1)
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

