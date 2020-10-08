#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
IES Clara del Rey - Departamento de Informática
Ciclo Superior ASIR - Fundamentos de Programación
@author: jose - jajprofe@gmail.com
Created on Tue Dec 31 15:52:08 2019
"""
# Longitud de una cadena de texto

while True:
    print("Introduzca el texto: ")
    frase = input()
    long = len(frase)
	
    print("La expresión tiene ",long," caracteres.")
    print("Para calcular otro, introduzca `s`")
    otronum = input()
    if otronum!="s": break