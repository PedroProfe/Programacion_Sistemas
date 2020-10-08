// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular el exponencial de un número dado
//Se usan dos métodos, uno directo por operación aritmética
//y otro mediante un bucle multiplicando la base por sí misma reiteradamente
Proceso Exponencial
	Definir base,exponente,resultado,i Como Entero;
	Escribir "Introduzca la base: " Sin Saltar;
	Leer base;
	Escribir "Introduzca el exponente: " Sin Saltar;
	Leer exponente;
	Escribir "-------";
	Escribir "Método 1: Mediante operación directa";
	Escribir "El resultado es: ",base^exponente;
	Escribir "";
	Escribir "-------";
	Escribir "Método 2: Mediante bucle";
	resultado<-1;
	Para i<-1 hasta exponente Hacer
		resultado<-resultado*base;
	FinPara
	Escribir "El resultado es: ",resultado;
	Escribir "-------------------------";
	
FinProceso
