#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:24:29 2019
"""

# Programa que calcula el área de un círculo

numeropi=3.141592
while True:
    print("Introduzca el radio: ",end="")
    radio=float(input())
    area=numeropi*radio**2
    print("El área es: ",area)
    print("Para calcular otro, introduzca 's'")
    otronum=input()
    if otronum!="s": break