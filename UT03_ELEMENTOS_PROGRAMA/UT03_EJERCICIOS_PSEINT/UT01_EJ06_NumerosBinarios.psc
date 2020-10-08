// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para transformar un n�mero en c�digo binario

Proceso Binario
	
	Definir num Como Entero;
	Definir resultado Como cadena;
	Definir cociente,resto Como Entero;
	
	Definir otronum Como Caracter;
	
	Repetir
		Repetir
			Escribir "Introduzca un n�mero natural: " Sin Saltar;
			Leer num;
		Hasta Que num>=0;
		
		Escribir "El valor binario de ",num," es: ";
		
		resultado<-"";
		
		//Si el n�mero es mayor que 1,
		//dividiremos sucesivamente entre 2
		Mientras num>1 Hacer
			cociente<-trunc(num/2);
			resto<-num%2;
			num<-cociente;
			//Vamos rellenando el resultado empezando por la derecha
			//y le a�adimos el resto de cada divisi�n como una cifra
			//m�s a la izquierda.
			resultado<-concatenar(ConvertirATexto(resto),resultado);
		FinMientras
		//La �ltima cifra a la izquierda ser� el resultado de las sucesivas
		//divisiones, que siempre ser� 1 salvo que el n�mero elegido fuera 0
		resultado<-concatenar(ConvertirATexto(num),resultado);
		
		Escribir resultado;
				
		Escribir "------";
		Escribir "Introduzca `s` para calcular otro.";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso
