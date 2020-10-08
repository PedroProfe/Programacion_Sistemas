// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para calcular el exponencial de un n�mero dado
//Se usan dos m�todos, uno directo por operaci�n aritm�tica
//y otro mediante un bucle multiplicando la base por s� misma reiteradamente
Proceso Exponencial
	Definir base,exponente,resultado,i Como Entero;
	Escribir "Introduzca la base: " Sin Saltar;
	Leer base;
	Escribir "Introduzca el exponente: " Sin Saltar;
	Leer exponente;
	Escribir "-------";
	Escribir "M�todo 1: Mediante operaci�n directa";
	Escribir "El resultado es: ",base^exponente;
	Escribir "";
	Escribir "-------";
	Escribir "M�todo 2: Mediante bucle";
	resultado<-1;
	Para i<-1 hasta exponente Hacer
		resultado<-resultado*base;
	FinPara
	Escribir "El resultado es: ",resultado;
	Escribir "-------------------------";
	
FinProceso
