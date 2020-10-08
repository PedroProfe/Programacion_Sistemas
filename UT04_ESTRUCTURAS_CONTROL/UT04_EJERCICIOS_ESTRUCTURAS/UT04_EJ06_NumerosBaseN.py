#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Creado el Tue Dec 31 13:59:08 2019
"""
#Conversión a base N

def guarismo(numero):
    #Conversor de número a dígito en bases 11 a 16
    #Es necesario calcular los guarismos para sustituir
    #por su valor: 10-A 11-B 12-C 13-D 14-E 15-F
    if numero>=0 and numero <10:
        return str(numero)
    elif numero==10:
        return "A"
    elif numero==11:
        return "B"
    elif numero==12:
        return "C"
    elif numero==13:
        return "D"
    elif numero==14:
        return "E"
    elif numero==15:
        return "F"
    else:
        return "ERROR"

def ConversorN(num,base):
    resultado=""
    while num>=base:
        resto = num%(base)
        num = int(num/base)
        resto = guarismo(resto) #Si el resto es >10 se busca el símbolo   
        resultado = resto + resultado

    resultado = guarismo(num) + resultado
    return resultado


while True:
    while True:
        print("Introduzca un número natural: ", end="")
        num = int(input())
        print("Introduzca la base: ", end="")
        base = int(input())
        if num>=0 and base>=0 and base<=16: break
        
    print("El valor en base",base,"de",num," es: ")
    
    resultado = ConversorN(num,base)
    print(resultado)
    print("------")
    print("Introduzca `s` para calcular otro.")
    otronum = input()
    if otronum!="s": break