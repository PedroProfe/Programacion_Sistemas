#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec 31 12:18:42 2019

@author: jose
"""

print("Introduzca la base: ", end="")
base = int(input())
print("Introduzca el exponente: ", end="")
exponente = int(input())
print("-------")
print("Método 1: Mediante operaci�n directa")
print("El resultado es: ",base**exponente)
print("")
print("-------")
print("Método 2: Mediante bucle")
resultado = 1
for i in range(1,exponente+1):
	resultado = resultado*base
print("El resultado es: ",resultado)
print("-------------------------")