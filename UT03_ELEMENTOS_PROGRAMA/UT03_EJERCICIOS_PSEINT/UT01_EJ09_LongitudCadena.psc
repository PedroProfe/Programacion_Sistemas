// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular la longitud de una cadena de texto
Proceso LongitudCadena
	Definir otronum Como Caracter;
	Definir frase Como cadena;
	Definir long Como Entero;
	
	Repetir
		Escribir "Introduzca el texto: ";
		Leer frase;
		long<-Longitud(frase);
		Escribir "La expresión tiene ",long," caracteres.";
		
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso
