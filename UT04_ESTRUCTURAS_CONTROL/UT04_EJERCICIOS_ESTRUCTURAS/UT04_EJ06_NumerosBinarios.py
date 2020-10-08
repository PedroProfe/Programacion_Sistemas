#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:59:08 2019
"""
#Conversión a binario

while True:
	while True:
		print("Introduzca un n�mero natural: ", end="")
		num = int(input())
		if num>=0: break
	print("El valor binario de ",num," es: ")
	resultado = ""
	while num>1:
		resto = num%2
		num = int(num/2)
        #resultado es la cifra que vamos obteniendo, empezando por la derecha
        #El primer dígito a la derecha es el primer resto, y sucesivamente
        #calculamos los siguientes restos resultantes de dividir entre 2.
		resultado = str(resto)+resultado
    
    #Cuando hemos dividido sucesivamente terminamos llegando a num=1
    #Ya no podemos dividir más, y ponemos el último cociente a la izquierda de todo
	resultado = str(num)+resultado
	print(resultado)
	print("------")
	print("Introduzca `s` para calcular otro.")
	otronum = input()
	if otronum!="s": break