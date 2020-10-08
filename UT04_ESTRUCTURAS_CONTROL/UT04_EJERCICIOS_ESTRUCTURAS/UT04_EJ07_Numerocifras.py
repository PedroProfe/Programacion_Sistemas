#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:20:20 2019
"""

while True:
    while True:
        print("Introduzca un número mayor que 0: ",end="")
        num=int(input())
        if num>0: break
    #Como el número introducido es mayor que 0, hay al menos 1 cifra
    cifras=1
    while num>=10:
        #Mientras el número sea mayor que 10, lo dividimos por 10
        #y sabemos que tendrá una cifra más
        cifras+=1
        num=int(num/10)
    print("Número de cifras: ",cifras)
    print("----------")
    print("Pulse 's' para calcular otro número.",end="")
    otronum=input()
    if otronum!="s": break