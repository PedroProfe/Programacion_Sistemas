#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 16:20:07 2019
"""

# Programa para adivinar números

from random import randint

def leernumero():
	while True:
		print("Introduzca un número positivo entre 0 y 99: ", end="")
		numero = int(input())
		if numero>=0 and numero<=100: break
	return numero

def aproximacion(numero, intento):
	franja = str()
	if numero>intento:
		franja = "MAYOR"
	else:
		franja = "MENOR"
	return franja

while True:
	numintentos = 0
	numero = randint(0,99)
	intento = 100
	while numero!=intento:
		intento = leernumero()
		palabra = aproximacion(numero,intento)
		print("El número secreto es",palabra," que ese")
		numintentos = numintentos+1
		print("Intentos realizados: ",numintentos,"\n---------")
        
	print("Correcto, era el número",numero)
	print("Número acertado en ",numintentos," intentos!!")
	print("------")
	print("Para calcular otro, introduzca `s`")
	otronum = input()
	if otronum!="s": break