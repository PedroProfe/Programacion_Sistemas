// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para calcular la longitud de una cadena de texto
Proceso LongitudCadena
	Definir otronum Como Caracter;
	Definir frase Como cadena;
	Definir long Como Entero;
	
	Repetir
		Escribir "Introduzca el texto: ";
		Leer frase;
		long<-Longitud(frase);
		Escribir "La expresi�n tiene ",long," caracteres.";
		
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s"
		
FinProceso
