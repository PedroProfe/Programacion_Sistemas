// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular los números primos hasta uno dado
Proceso Primos
	
	Definir num Como Entero;
	Definir i,j Como Entero;
	Definir primo como Logico;
	Definir otronum Como Caracter;
	
	Repetir
		Escribir "Introduzca número: " Sin Saltar;
		Leer num;
		
		Escribir "Lista de números primos hasta ",num,":";
		
		//Recorremos todos los números desde el 1 hasta el solicitado
		Para i<-1 hasta num Hacer
			//Para cada número i, en principio pensamos que puede ser primo
			primo<-Verdadero;
			//Recorremos todos los números comprendidos entre 2 e i-1
			//Si el resultado de dividir el número principal entre
			//(es decir, este bucle no se ejecuta para i=1 ni i=2)
			Para j<-2 hasta i-1 Hacer
				Si  i MOD j = 0 Entonces
					//En caso de encontrar una división cuyo resto es 0,
					//el número ya no será primo
					primo<-Falso;
				FinSi
			FinPara
			Si primo Entonces
				//Esta condición se da si después de hacer todas las divisiones
				//no encontramos ninguna que dé resultado exacto
				Escribir i, " " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
		Escribir "------";
		Escribir "Introduzca `s` para calcular otro.";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso
