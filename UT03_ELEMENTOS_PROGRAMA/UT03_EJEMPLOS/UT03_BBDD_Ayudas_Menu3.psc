Proceso UT03_BBDD_Ayudas_Menu
	
	Definir profesion como Cadena;
	Dimension profesion[3];
	Definir edad Como Entero;
	Dimension edad[3];
	Definir nombre como Cadena;
	Dimension nombre[3];
	Definir opcion,numempleado Como Entero;
	Definir otravez Como Caracter;

	
	edad[0]<-49;
	profesion[0]<-"Profesor";
	nombre[0]<-"Jose";
	
	edad[1]<-24;
	profesion[1]<-"Electricista";
	nombre[1]<-"Pedro";
	
	edad[2]<-30;
	profesion[2]<-"Catedrática";
	nombre[2]<-"María";
	
	Repetir
	
		Escribir "   MENÚ DE OPCIONES:";
		Escribir "1 - Saber nombre";
		Escribir "2 - Saber edad";
		Escribir "3 - Saber profesión";
		
		Escribir "   Introduzca opción: ";
		Repetir
			Leer opcion;
		Hasta Que opcion>=1 y opcion<=3
		
		Repetir
			Escribir "Introduzca el número de empleado: ";
			Leer numempleado;
		Hasta Que numempleado>=0 y numempleado<=2
		
		Segun opcion Hacer
			1:
				EscribirNombre(nombre,numempleado);
			2:
				EscribirEdad(edad,numempleado);
			3:
				EscribirProfesion(profesion,numempleado);
		FinSegun
		
		Escribir "¿Repetir (s/n)? ";
		Leer otravez;
		
	Hasta Que otravez=="n"
	
	Escribir "Hasta luego.";
	
FinProceso

Subproceso EscribirNombre(nombre,numempleado)
	Escribir "Nombre: ",nombre[numempleado];
FinSubProceso

Subproceso EscribirEdad(edad,numempleado)
	Escribir "Edad: ",edad[numempleado];
FinSubProceso

Subproceso EscribirProfesion(profesion,numempleado)
	Escribir "Profesion: ",profesion[numempleado];
FinSubProceso
