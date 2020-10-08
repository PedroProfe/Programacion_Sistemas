// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: Jose Antonio Jimenez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocodigo con PSeInt

//Programa para calcular la serie de Fibonacci
Proceso Fibonacci
	Definir i,numprev1,numprev2,numfinal,fibo Como Entero;
	Definir otra como Caracter;
	
	Repetir
		Repetir
			Escribir "Introduzca el numero de la serie, mayor o igual que 1: " Sin Saltar;
			Leer numfinal;
		Hasta que numfinal>0;
		
		numprev1<-0;
		numprev2<-1;
		fibo<-1;
		
		//El siguiente bucle solo se ejecuta cuando la serie
		//tiene más de un elemento
		i<-1;
		Mientras i<=numfinal Hacer
			//Para cada nuevo ciclo, escribimos el valor de la serie
			//y calculamos la suma de los dos valores anteriores
			Escribir fibo Sin Saltar;
			fibo<-numprev1+numprev2;
			
			//Reasignando valores
			numprev1<-numprev2;
			numprev2<-fibo;
			
			Si i<numfinal Entonces
				//Si se esperan mas numeros añadimos un "-"
				Escribir "-" Sin Saltar;
			SiNo
				//Cerramos la serie con un salto de línea:
				Escribir "";					
			FinSi
			
			//Incrementamos el contador
			i<-i+1;
			
		FinMientras
		
		Escribir "-------------------------";
		
		Escribir "¿Calcular otra serie (Teclear `s`)? " Sin Saltar;
		Leer otra;
	Hasta Que otra<>"s"
		
FinProceso
