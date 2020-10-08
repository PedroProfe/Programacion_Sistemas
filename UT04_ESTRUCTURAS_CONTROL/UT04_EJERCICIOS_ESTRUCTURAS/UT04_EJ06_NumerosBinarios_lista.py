#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:59:08 2019
"""
#Conversión a binario
#Esta variante utiliza una LISTA de valores en la que se van
#incorporando los restos de las divisiones.

while True:
    while True:
        print("Introduzca un número natural: ", end="")
        num = int(input())
        if num>=0: break
    cociente=num
    resultado = []
    while cociente>1:
        resto = cociente%2
        cociente = int(cociente/2)
        #resultado es la cifra que vamos obteniendo, empezando por la derecha
        #El primer dígito a la derecha es el primer resto, y sucesivamente
        #calculamos los siguientes restos resultantes de dividir entre 2.
        resultado.append(resto)
    
    #Cuando hemos dividido sucesivamente terminamos llegando a num=1
    #Ya no podemos dividir más, y ponemos el último cociente a la izquierda de todo
    print("El valor binario de",num,"es:")
    resultado.append(cociente)
    for i in (reversed(resultado)):
        print(i,end="")
    print("")
    print("------")
    print("Introduzca `s` para calcular otro.")
    otronum = input()
    if otronum!="s": break