Proceso UT03_BBDD_Ayudas_Menu
	
	Definir profesion como Cadena;
	Dimension profesion[3];
	Definir edad Como Entero;
	Dimension edad[3];
	Definir nombre como Cadena;
	Dimension nombre[3];
	Definir opcion,numempleado,edadmin,edadmax Como Entero;
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
		Escribir "4 - Listar todos los empleados";
		Escribir "5 - Filtrar por edad";
		
		Escribir "   Introduzca opción: ";
		Repetir
			Leer opcion;
		Hasta Que opcion>=1 y opcion<=5
		
		Si opcion>=1 y opcion<=3 Entonces
			Repetir
				Escribir " el número de empleado: ";
				Leer numempleado;
			Hasta Que numempleado>=0 y numempleado<=2
		FinSi
			
		Segun opcion Hacer
			1:
				EscribirNombre(nombre,numempleado);
				
			2:
				EscribirEdad(edad,numempleado);
				
			3:
				EscribirProfesion(profesion,numempleado);
				
			4:
				ListarEmpleados(nombre,edad,profesion);
				
			5:
				Escribir "Edad mínima: ";
				Leer edadmin;
				Escribir "Edad máxima: ";
				Leer edadmax;
				FiltrarEmpleados(nombre,edad,profesion,edadmin,edadmax);
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

Subproceso ListarEmpleados(nombre,edad,profesion)
	Definir contador Como Entero;
	Para contador<-0 hasta 2 Hacer
		Escribir nombre[contador],"-",edad[contador],"-",profesion[contador];
	FinPara
FinSubProceso

Subproceso FiltrarEmpleados(nombre,edad,profesion,edadmin,edadmax)
	Definir contador Como Entero;
	Para contador<-0 hasta 2 Hacer
		Si edad[contador]>=edadmin y edad[contador]<=edadmax Entonces
			Escribir nombre[contador],"-",edad[contador],"-",profesion[contador];
		FinSi
	FinPara
FinSubProceso
