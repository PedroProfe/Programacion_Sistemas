Proceso UT03_BBDD_Ayudas_Menu
	
	Definir profesion como Cadena;
	Definir edad Como Entero;
	Definir nombre como Cadena;
	Definir opcion Como Entero;
	
	edad<-49;
	profesion<-"Profesor";
	nombre<-"Jose";
	
	Repetir
	
		Escribir "   MENÚ DE OPCIONES:";
		Escribir "1 - Saber nombre";
		Escribir "2 - Saber edad";
		Escribir "3 - Saber profesión";
		Escribir "4 - Salir";
		
		Escribir "   Introduzca opción: ";
		Repetir
			Leer opcion;
		Hasta Que opcion>=1 y opcion<=4
		
		Segun opcion Hacer
			1:
				Escribir "Nombre: ",nombre;
			2:
				Escribir "Edad: ",edad;
			3:
				Escribir "Profesión: ",profesion;
		FinSegun
		
	Hasta Que opcion==4
	
FinProceso
