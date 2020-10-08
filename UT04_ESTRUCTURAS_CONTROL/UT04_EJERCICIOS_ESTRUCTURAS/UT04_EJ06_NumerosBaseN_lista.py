#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com

Programa: CONVERSOR NUMÉRICO BASE N
Descripción:
    Conversión a base N (siendo N entre 2 y 16)
    Esta variante utiliza una LISTA de valores en la que se van
    incorporando los restos de las divisiones.  
    
Creado: Tue Dec 31 13:59:08 2019
"""


print ("Conversor numérico de decimal a cualquier base:")
print ("-----------------------------------------------")

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

def ConversorN(cociente,base):
    #Esta es la función que realiza los cálculos principales. La saco
    #del programa principal por si tiene sentido utilizarla desde algún
    #otro programa. La función devuelve una lista de elementos que se
    #corresponde con los dígitos del número convertido a base N, escritos
    #en orden inverso.
    resultado = []
    while cociente>=base:
        resto = cociente%base
        cociente = int(cociente/base)
        #resultado es la cifra que vamos obteniendo, empezando por la derecha
        #El primer dígito a la derecha es el primer resto, y sucesivamente
        #calculamos los siguientes restos resultantes de dividir entre la base.
        resultado.append(guarismo(resto))
    
    #Cuando hemos dividido sucesivamente terminamos llegando a num<base
    #Ya no podemos dividir más, y ponemos el último cociente a la derecha
    resultado.append(guarismo(cociente))
    #Pero como hemos ido apilando los elementos en la lista empezando
    #por el menos significativo, en este momento el número en base N
    #está invertido. Por eso, nuestra función devolverá el "reversed"
    return reversed(resultado)    
    
while True:
    while True:
        print("Introduzca un número natural: ", end="")
        num = int(input())
        print("Introduzca la base: ",end="")
        base = int(input())
        if num>=0 and base>1 and base<=16: break
    cociente=num

    resultado=ConversorN(cociente,base)
    
    print("El valor de",num,"en base",base,"es:")
    for i in (resultado):
        print(i,end="")
    print("")
    print("------")
    print("Introduzca `s` para calcular otro.")
    otronum = input()
    if otronum!="s": break