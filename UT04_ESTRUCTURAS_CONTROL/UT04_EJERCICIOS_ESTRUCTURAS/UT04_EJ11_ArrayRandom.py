#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 15:54:21 2019
"""
# Array de valores aleatorios
from random import randint
valor=[]
numeros=int(input("¿Cuántos valores quieres? "))

for i in range(numeros):
    valor.append(randint(0,10))

for i in range(numeros):
	print("Valor ",i,": ",valor[i])