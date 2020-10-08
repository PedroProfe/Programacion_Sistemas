// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para dibujar una pir�mide en pantalla
SubProceso EscribeCaracter(num,letra)
	
	Definir i Como Entero;
	
	Para i<-1 hasta num Hacer
		Escribir letra Sin Saltar;
	FinPara
	
FinSubProceso

SubProceso exito<-CalcularPiramide(num)
	
	Definir filas,numasteriscos,numespacios Como Entero;
	Definir exito como Entero;
	
	Si num=0 Entonces
		exito<--1;
	SiNo
		exito<-0;
		Para filas<-num hasta 1 Con Paso -1 Hacer
			numespacios<-num-filas;
			EscribeCaracter(numespacios," ");
			numasteriscos<-(filas-1)*2+1;
			EscribeCaracter(numasteriscos,"*");
			Escribir "";
		FinPara
	FinSi
	
FinSubProceso

Proceso Piramide
	Definir otronum Como Caracter;
	Definir num Como Entero;
	Definir error Como Entero;
	
	Repetir
		Repetir
			Escribir "Introduzca un n�mero mayor que 0: ";
			Leer num;
		Hasta que num>=0;
		error<-CalcularPiramide(num);
		
		Si error=-1 Entonces
			Escribir "ERROR: No ha introducido un n�mero mayor que cero.";
		FinSi
		Escribir "Pulse `s` para calcular otro n�mero.";
		Leer otronum;
	Hasta Que otronum<>"s"
	
FinProceso
	