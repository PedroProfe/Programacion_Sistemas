#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 15:47:45 2019
"""

def escribecaracter(num, letra):
	for i in range(1,num+1):
		print(letra, end="")

def calcularpiramide(num):
	if num==0:
		exito = -1
	else:
		exito = 0
		for filas in range(num,0,-1):
			numespacios = num-filas
			escribecaracter(numespacios," ")
			numasteriscos = (filas-1)*2+1
			escribecaracter(numasteriscos,"*")
			print("")
	return exito

while True:
	while True:
		print("Introduzca un número mayor que 0: ")
		num = int(input())
		if num>=0: break
	error = calcularpiramide(num)
	if error==-1:
		print("ERROR: No ha introducido un número mayor que cero.")
	print("Pulse `s` para calcular otro número.")
	otronum = input()
	if otronum!="s": break