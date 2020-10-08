#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 15:54:21 2019
"""
# Array de valores
valores=[]

while True:
    print("Introduzca un valor numérico  o 'n' para terminar: ",end="")
    valor=input()
    if valor=="n":
        break
    else:
        valores.append(int(valor))
        

for i in range(len(valores)):
	print("Valor ",i,": ",valores[i])