// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para transformar un número en código binario

Proceso Binario
	
	Definir num Como Entero;
	Definir resultado Como cadena;
	Definir cociente,resto Como Entero;
	
	Definir otronum Como Caracter;
	
	Repetir
		Repetir
			Escribir "Introduzca un número natural: " Sin Saltar;
			Leer num;
		Hasta Que num>=0;
		
		Escribir "El valor binario de ",num," es: ";
		
		resultado<-"";
		
		//Si el número es mayor que 1,
		//dividiremos sucesivamente entre 2
		Mientras num>1 Hacer
			cociente<-trunc(num/2);
			resto<-num%2;
			num<-cociente;
			//Vamos rellenando el resultado empezando por la derecha
			//y le añadimos el resto de cada división como una cifra
			//más a la izquierda.
			resultado<-concatenar(ConvertirATexto(resto),resultado);
		FinMientras
		//La última cifra a la izquierda será el resultado de las sucesivas
		//divisiones, que siempre será 1 salvo que el número elegido fuera 0
		resultado<-concatenar(ConvertirATexto(num),resultado);
		
		Escribir resultado;
				
		Escribir "------";
		Escribir "Introduzca `s` para calcular otro.";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso
