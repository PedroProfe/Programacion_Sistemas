#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Programa: 
Creado el Tue Jan 14 09:53:16 2020

@autor: jjimenezc
"""

# read three numbers
number1 = int(input("Enter the first number: "))
number2 = int(input("Enter the second number: "))
number3 = int(input("Enter the third number: "))
# check which one of the numbers is the greatest
# and pass it to the largest_number variable
largest_number=number1
if number2>largest_number:
    largest_number=number2
if number3>largest_number:
    largest_number=number3

print('Largest number:',largest_number)