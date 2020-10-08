// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular el Factorial de un número
//En este caso usamos una función recursiva

SubProceso producto <- FactorialN(numero)
	Definir producto Como Entero;
	//Mediante programación recursiva podemos hacer que una función
	//se llame a sí misma un número sucesivo de veces, devolviendo
	//el valor final
	Si numero<2 Entonces
		producto<-1;
	SiNo
		producto<-numero*FactorialN(numero-1);
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
		Escribir "------------------------------";
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s"
	
FinProceso