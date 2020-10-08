// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
// Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
// Ejercicios resueltos de pseudoc�digo con PSeInt
// Programa para adivinar un n�mero
SubProceso numero <- leerNumero()
	Definir numero Como Entero;
	Repetir
		Escribir 'Introduzca un n�mero positivo entre 0 y 99: ' Sin Saltar;
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
			Escribir 'El n�mero secreto es ',palabra,' que ese';
			numintentos <- numintentos+1;
			Escribir 'Intentos realizados: ',numintentos;
		FinMientras
		Escribir 'N�mero acertado en ',numintentos,' intentos!!';
		Escribir '------';
		Escribir 'Para calcular otro, introduzca `s`';
		Leer otronum;
	Hasta Que otronum<>'s'
FinProceso

