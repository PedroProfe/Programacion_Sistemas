// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para calcular el Factorial de un n�mero
//En este caso usamos una funci�n recursiva

SubProceso producto <- FactorialN(numero)
	Definir producto Como Entero;
	//Mediante programaci�n recursiva podemos hacer que una funci�n
	//se llame a s� misma un n�mero sucesivo de veces, devolviendo
	//el valor final
	Si numero<2 Entonces
		producto<-1;
	SiNo
		producto<-numero*FactorialN(numero-1);
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
		Escribir "------------------------------";
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s"
	
FinProceso