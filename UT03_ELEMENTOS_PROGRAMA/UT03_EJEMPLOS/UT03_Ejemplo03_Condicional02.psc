Proceso UT03_Ejemplo03_Programa_edad
	
	Definir edad Como Entero;
	
	Escribir "Introduzca su edad: ";
	
	Leer edad;
	
	Si edad==18 Entonces
		Escribir "Enhorabuena, ya eres mayor!!!!";
	SiNo
		// Esto es una condición anidada
		
		Si edad>18 Entonces
			Escribir "Bienvenido!!!";
		SiNo
			Escribir "No puedes pasar.";
		FinSi
		
		
	FinSi
	
FinProceso
