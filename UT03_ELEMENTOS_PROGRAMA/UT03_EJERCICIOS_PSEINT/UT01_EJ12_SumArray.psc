// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular la suma de elementos de un array

Subproceso RellenarArray(tabla,alto,bajo)
	Definir i Como Entero;
	Para i<-0 hasta 9 Hacer
		tabla[i]<-Aleatorio(bajo,alto);
		Escribir tabla[i]," " Sin Saltar;
	FinPara
	Escribir "";
FinSubProceso

Subproceso suma<-SumArray(tabla)
	Definir suma,i Como Entero;
	suma<-0;
	Para i<-0 hasta 9 Hacer
		suma<-suma+tabla[i];
	FinPara
FinSubProceso

Proceso SumarArray
	Dimension tabla[10];
	Definir i,suma Como Entero;
	Definir tabla Como Entero;
	Definir otronum Como Caracter;
	Repetir
		RellenarArray(tabla,0,9);
		suma<-SumArray(tabla);
		Escribir "--------";
		Escribir "La suma es: ",suma;
		Escribir "--------";
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s";
		
FinProceso
