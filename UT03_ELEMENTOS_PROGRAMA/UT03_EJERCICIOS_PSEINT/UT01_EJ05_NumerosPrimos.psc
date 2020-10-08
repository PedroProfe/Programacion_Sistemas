// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para calcular los n�meros primos hasta uno dado
Proceso Primos
	
	Definir num Como Entero;
	Definir i,j Como Entero;
	Definir primo como Logico;
	Definir otronum Como Caracter;
	
	Repetir
		Escribir "Introduzca n�mero: " Sin Saltar;
		Leer num;
		
		Escribir "Lista de n�meros primos hasta ",num,":";
		
		//Recorremos todos los n�meros desde el 1 hasta el solicitado
		Para i<-1 hasta num Hacer
			//Para cada n�mero i, en principio pensamos que puede ser primo
			primo<-Verdadero;
			//Recorremos todos los n�meros comprendidos entre 2 e i-1
			//Si el resultado de dividir el n�mero principal entre
			//(es decir, este bucle no se ejecuta para i=1 ni i=2)
			Para j<-2 hasta i-1 Hacer
				Si  i MOD j = 0 Entonces
					//En caso de encontrar una divisi�n cuyo resto es 0,
					//el n�mero ya no ser� primo
					primo<-Falso;
				FinSi
			FinPara
			Si primo Entonces
				//Esta condici�n se da si despu�s de hacer todas las divisiones
				//no encontramos ninguna que d� resultado exacto
				Escribir i, " " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
		Escribir "------";
		Escribir "Introduzca `s` para calcular otro.";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso
