// IES Clara del Rey - M�dulo Fundamentos de Programaci�n
//Profesor: Jos� Antonio Jim�nez - jajprofe@gmail.com
//Ejercicios resueltos de pseudoc�digo con PSeInt

//Programa para calcular el �rea de un c�rculo
Proceso AreaCirculo
	Definir radio,area Como Real;
	Definir numeropi como Real;
	Definir otronum Como Caracter;
	
	numeropi<-3.141592;
	
	Repetir
		Escribir "Introduzca el radio: ";
		Leer radio;
		
		area<-numeropi*radio^2;
		Escribir "El �rea es: ",area;
		
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s";
		
FinProceso
