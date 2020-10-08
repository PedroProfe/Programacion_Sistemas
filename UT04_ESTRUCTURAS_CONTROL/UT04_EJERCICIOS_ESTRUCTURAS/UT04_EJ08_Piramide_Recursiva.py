#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Wed Jan 22 00:08:33 2020
"""

def piramide(filas,ancho):
    if filas>0:
        cadena="*"*(2*filas-1)
        espacios=" "*int((ancho-len(cadena))/2)
        print(espacios+cadena)
        piramide(filas-1,ancho)

    
filas=int(input("¿Cuántas filas? "))
ancho=2*filas-1
piramide(filas,ancho)