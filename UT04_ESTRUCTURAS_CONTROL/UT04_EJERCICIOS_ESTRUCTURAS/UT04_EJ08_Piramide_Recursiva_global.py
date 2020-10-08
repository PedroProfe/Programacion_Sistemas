#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Wed Jan 22 00:08:33 2020
"""

"""def piramide(filas,ancho):
    if filas>0:
        cadena="*"*(2*filas-1)
        espacios=" "*int((ancho-len(cadena))/2)
        print(espacios+cadena)
        piramide(filas-1,ancho)
"""
global espacios
global asteriscos

def piramide(filas):
    global espacios
    global asteriscos
    print(" "*espacios+"*"*asteriscos)
    if asteriscos>1:
        espacios+=1
        asteriscos-=2
        piramide(filas-1)
    
filas=int(input("¿Cuántas filas? "))
espacios=0
asteriscos=filas*2-1
piramide(filas)5