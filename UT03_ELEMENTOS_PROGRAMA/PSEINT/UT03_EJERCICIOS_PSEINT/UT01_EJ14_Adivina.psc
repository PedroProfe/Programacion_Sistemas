// IES Clara del Rey - Módulo Fundamentos de Programación
// Profesor: José Antonio Jiménez - jajprofe@gmail.com
// Ejercicios resueltos de pseudocódigo con PSeInt
// Programa para adivinar un número
SubProceso numero <- leerNumero()
	Definir numero Como Entero;
	Repetir
		Escribir 'Introduzca un número positivo entre 0 y 99: ' Sin Saltar;
		Leer numero;
	Hasta Que numero>=0 Y numero<=100
FinSubProceso

SubProceso franja <- aproximacion(numero,intento)
	Definir franja Como Caracter;
	Si numero>intento Entonces
		franja <- 'mayor';
	SiNo
		franja <- 'menor';
	FinSi
FinSubProceso

Proceso AdivinarNumero
	Definir numero,intento,numintentos Como Entero;
	Definir palabra,otronum Como Caracter;
	Repetir
		numintentos <- 0;
		numero <- Aleatorio(0,99);
		intento <- 100;
		Mientras numero<>intento Hacer
			intento <- leerNumero();
			palabra <- aproximacion(numero,intento);
			Escribir 'El número secreto es ',palabra,' que ese';
			numintentos <- numintentos+1;
			Escribir 'Intentos realizados: ',numintentos;
		FinMientras
		Escribir 'Número acertado en ',numintentos,' intentos!!';
		Escribir '------';
		Escribir 'Para calcular otro, introduzca `s`';
		Leer otronum;
	Hasta Que otronum<>'s'
FinProceso

