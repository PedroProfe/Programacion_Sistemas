// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para presentar los valores de un array
Proceso ListarArray
	Dimension palabra[3];
	Definir palabra Como Cadena;
	Definir i Como Entero;
	
	palabra[0]<-"hola";
	palabra[1]<-"bye";
	palabra[2]<-"adios";
	
	Para i<-0 hasta 2 Hacer
		Escribir "Valor ",i,": ",palabra[i];
	FinPara
		
FinProceso
