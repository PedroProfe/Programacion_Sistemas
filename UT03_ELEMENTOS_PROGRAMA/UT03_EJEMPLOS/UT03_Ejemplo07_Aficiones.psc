Proceso UT03_Ejemplo07_Aficiones
	definir aficion Como Entero;
	Escribir "De las siguientes opciones:";
	Escribir "1 - Deportes";
	Escribir "2 - M�sica";
	Escribir "3 - Tumbing";
	Escribir "Dime cu�l es tu afici�n principal: " Sin Saltar;
	Leer aficion;
	
	Segun aficion Hacer
		1:
			Escribir "Deber�as estudiar m�s";
		2:
			Escribir "Deber�as salir m�s al aire libre";
		3:
			Escribir "Eres un vago";
		De Otro Modo:
			Escribir "Tienes que aclarar tu vida.";
	FinSegun
	
FinProceso
