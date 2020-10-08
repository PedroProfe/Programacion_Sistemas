// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para rellenar un array con valores aleatorios
Subproceso RellenarArray(tabla,alto,bajo)
	Definir i Como Entero;
	Para i<-0 hasta 9 Hacer
		tabla[i]<-Aleatorio(bajo,alto);
	FinPara
FinSubProceso

Proceso LongitudCadena
	Dimension tabla[10];
	Definir otronum Como Caracter;
	Definir i,tabla,alto,bajo Como Entero;
	
	Repetir
		Repetir
			Escribir "Valor m�s bajo: " Sin Saltar;
			Leer bajo;
			Escribir "Valor m�s alto: " Sin Saltar;
			Leer alto;
		Hasta que alto>=bajo;
		
		RellenarArray(tabla,alto,bajo);
		
		Para i<-0 hasta 9 Hacer
			Escribir tabla[i]," " Sin Saltar;
		FinPara
		Escribir "";
		
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s";
		
FinProceso
