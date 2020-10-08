#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Jan 21 23:25:02 2020
"""

#Pirámide de asteriscos

filas=int(input("¿Cuántas filas?: "))

for i in range(filas+1,0,-1):
    #número de asteriscos = (i-1)*2+1
    cadena=("*"*((i-1)*2-1))
    #número de espacios = filas+1-i   
    espacios=" "*(filas+1-i)
    print(espacios+cadena)