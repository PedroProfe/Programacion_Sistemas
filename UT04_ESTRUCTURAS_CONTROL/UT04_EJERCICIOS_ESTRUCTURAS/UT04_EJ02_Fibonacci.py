#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 13:40:10 2019
"""
while True:
    while True:
        print("Introduzca el primer número de la serie, mayor o igual que 1: ", end="")
        numfinal = int(input())
        if numfinal>0: break
    numprev1 = 0
    numprev2 = 1
    fibo = 1
    i = 1
    while i<=numfinal:
        print(fibo, end="")
        fibo = numprev1+numprev2
        numprev1 = numprev2
        numprev2 = fibo
        if i<numfinal:
            print("-", end="")
        else:
            print("")
        i+=1
    print("-------------------------")
    print("Calcular otra serie (Teclear 's')", end="")
    otra = input()
    if otra!="s": break