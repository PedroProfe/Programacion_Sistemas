// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular el número de cifras de un número entero

Proceso NumCifras
	
	Definir num,cifras Como Entero;
	Definir otronum Como Caracter;
	
	Repetir
		Repetir
			Escribir "Introduzca un número mayor que 0: ";
			Leer num;
		Hasta que num>0;	
		cifras<-1;
		
		Mientras num>=10 Hacer
			cifras<-cifras+1;
			num<-trunc(num/10);
		FinMientras
		
		Escribir "Número de cifras: ",cifras;
		Escribir "----------------------------------";
		Escribir "Pulse `s` para calcular otro número.";
		Leer otronum;
	Hasta Que otronum<>"s"
	
FinProceso
