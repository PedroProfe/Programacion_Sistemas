// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para calcular el Factorial de un n�mero

SubProceso producto <- FactorialN(numero)
	//El subproceso FactorialN permite calcular un factorial a base
	//de ir multiplicando el n�mero por el inmediatamente inferior
	//hasta 1. Se usa un bucle "Para"
	Definir producto,i Como Entero;
	producto<-1;
	Si numero>1 Entonces
		Para i<-numero hasta 1 Con Paso -1 Hacer
			producto<-producto*i;
		FinPara
	FinSi
FinSubProceso


Proceso CalculoFactorial
	//Ingresamos los datos para la operaci�n
	Definir numeroN,factorial Como Entero;
	Definir otronum Como Caracter;
	
	Repetir
		Escribir "Introduzca un n�mero: ";
		Leer numeroN;
		factorial<-FactorialN(numeroN);
		Escribir "El factorial de ",numeroN," es: ",factorial;
		Escribir "----------------------------------";
		Escribir "Pulse `s` para calcular otro n�mero.";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso