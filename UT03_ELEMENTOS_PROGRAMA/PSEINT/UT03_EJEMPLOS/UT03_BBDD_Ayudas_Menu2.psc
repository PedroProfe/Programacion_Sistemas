Proceso UT03_BBDD_Ayudas_Menu
	
	Definir profesion como Cadena;
	Definir edad Como Entero;
	Definir nombre como Cadena;
	Definir opcion Como Entero;
	Definir otravez Como Caracter;
	
	edad<-49;
	profesion<-"Profesor";
	nombre<-"Jose";
	
	Repetir
	
		Escribir "   MEN� DE OPCIONES:";
		Escribir "1 - Saber nombre";
		Escribir "2 - Saber edad";
		Escribir "3 - Saber profesi�n";
		
		Escribir "   Introduzca opci�n: ";
		Repetir
			Leer opcion;
		Hasta Que opcion>=1 y opcion<=3
		
		Segun opcion Hacer
			1:
				Escribir "Nombre: ",nombre;
			2:
				Escribir "Edad: ",edad;
			3:
				Escribir "Profesi�n: ",profesion;
		FinSegun
		
		Escribir "�Repetir (s/n)? ";
		Leer otravez;
		
	Hasta Que otravez=="n"
	
	Escribir "Hasta luego.";
	
FinProceso
