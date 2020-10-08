// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular el Factorial de un número

SubProceso producto <- FactorialN(numero)
	//El subproceso FactorialN permite calcular un factorial a base
	//de ir multiplicando el número por el inmediatamente inferior
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
	//Ingresamos los datos para la operación
	Definir numeroN,factorial Como Entero;
	Definir otronum Como Caracter;
	
	Repetir
		Escribir "Introduzca un número: ";
		Leer numeroN;
		factorial<-FactorialN(numeroN);
		Escribir "El factorial de ",numeroN," es: ",factorial;
		Escribir "----------------------------------";
		Escribir "Pulse `s` para calcular otro número.";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso