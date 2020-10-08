#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Thu Jan 16 18:55:53 2020
"""

base=input("Introduzca la base:")
#base es "texto". Ahora lo transformo en número
base=int(base)

exponente=input("Exponente:")
exponente=int(exponente)

#Operaciones con bucle while
"""n=0
resultado=1
while n<exponente:
    resultado=resultado*base
    n+=1
"""

#Operaciones con "for"
resultado=1
for n in range(exponente):
    resultado=resultado*base

#resultado=base**exponente
print("Resultado: ",resultado)