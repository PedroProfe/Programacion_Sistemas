// IES Clara del Rey - Módulo Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com
//Ejercicios resueltos de pseudocódigo con PSeInt

//Programa para calcular el área de un círculo
Proceso AreaCirculo
	Definir radio,area Como Real;
	Definir numeropi como Real;
	Definir otronum Como Caracter;
	
	numeropi<-3.141592;
	
	Repetir
		Escribir "Introduzca el radio: ";
		Leer radio;
		
		area<-numeropi*radio^2;
		Escribir "El área es: ",area;
		
		Escribir "Para calcular otro, introduzca `s`";
		Leer otronum;
	Hasta Que otronum<>"s";
		
FinProceso
