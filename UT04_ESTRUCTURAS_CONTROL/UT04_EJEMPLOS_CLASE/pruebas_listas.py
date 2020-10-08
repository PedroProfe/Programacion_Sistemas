#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Creado el Mon Feb 10 23:26:10 2020

Programa:
    
Descripción: 
    
"""

lista1=[3,8,7,5]
lista2=[8,5]

for elemento in lista1:
    if elemento not in lista2:
        print(elemento)
        
#Lista de cuadrados de los elementos de la lista
lista3=[elemento**2 for elemento in lista1]
print("Lista")
print(lista1)
print("Lista de cuadrados")
print(lista3)