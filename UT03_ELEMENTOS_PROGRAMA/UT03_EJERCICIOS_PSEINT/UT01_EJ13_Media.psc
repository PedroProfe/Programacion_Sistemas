// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular la media de elementos de un array

Subproceso RellenarArray(tabla,alto,bajo)
	Definir i Como Entero;
	Para i<-0 hasta 9 Hacer
		tabla[i]<-Aleatorio(bajo,alto);
		Escribir tabla[i]," " Sin Saltar;
	FinPara
	Escribir "";
FinSubProceso

Subproceso media<-MediaArray(tabla)
	Definir elementos,i Como Entero;
	Definir media Como Real;
	media<-0;
	elementos<-0;
	Para i<-0 hasta 9 Hacer
		media<-media+tabla[i];
		elementos<-elementos+1;
	FinPara
	media<-media/elementos;
FinSubProceso

Proceso SumarArray
	Dimension tabla[10];
	Definir i Como Entero;
	Definir media como Real;
	Definir tabla Como Entero;
	Definir otronum Como Caracter;
	Repetir
		RellenarArray(tabla,0,9);
		media<-MediaArray(tabla);
		Escribir "--------";
		Escribir "La media es: ",media;
		Escribir "--------";
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s";
		
FinProceso
