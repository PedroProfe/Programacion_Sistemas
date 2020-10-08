Proceso UT03_Ejemplo07_Aficiones
	definir aficion Como Entero;
	Escribir "De las siguientes opciones:";
	Escribir "1 - Deportes";
	Escribir "2 - Música";
	Escribir "3 - Tumbing";
	Escribir "Dime cuál es tu afición principal: " Sin Saltar;
	Leer aficion;
	
	Segun aficion Hacer
		1:
			Escribir "Deberías estudiar más";
		2:
			Escribir "Deberías salir más al aire libre";
		3:
			Escribir "Eres un vago";
		De Otro Modo:
			Escribir "Tienes que aclarar tu vida.";
	FinSegun
	
FinProceso
