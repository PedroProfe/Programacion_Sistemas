// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para calcular el n�mero de cifras de un n�mero entero

Proceso NumCifras
	
	Definir num,cifras Como Entero;
	Definir otronum Como Caracter;
	
	Repetir
		Repetir
			Escribir "Introduzca un n�mero mayor que 0: ";
			Leer num;
		Hasta que num>0;	
		cifras<-1;
		
		Mientras num>=10 Hacer
			cifras<-cifras+1;
			num<-trunc(num/10);
		FinMientras
		
		Escribir "N�mero de cifras: ",cifras;
		Escribir "----------------------------------";
		Escribir "Pulse `s` para calcular otro n�mero.";
		Leer otronum;
	Hasta Que otronum<>"s"
	
FinProceso
