Proceso UT03_Ejemplo06_Calificaciones2
	
	Definir nombre como Cadena;
	Definir nota como Real;
	Definir pregunta como Cadena;
	Definir otravez Como Logico;
	
	Repetir
		
		Escribir "Dime tu nombre: ";
		Leer nombre;
		
		Escribir "Dime tu nota (usar . para decimales: )";
		Leer nota;
		
		Escribir "Tienes un " Sin Saltar;
		
		si nota<5 Entonces
			escribir " Suspenso";			
		SiNo
			si nota<7 Entonces
				escribir " Aprobado";
			SiNo
				si nota<9 Entonces
					escribir "Notable";
				SiNo
					escribir "Sobresaliente";
				FinSi
			FinSi
		FinSi
		
		otravez <- Verdadero;
		
		Escribir "¿Introducir otro alumno(si/no)? ";
		Leer pregunta;
		
		//Diferentes posibilidades
		// Opción 1
		//si pregunta=="no" Entonces
			//otravez <- Falso;
		//FinSi
		
		// Opción 2
		si pregunta=="si" Entonces
			otravez <- Verdadero;
		SiNo
			otravez <- Falso;
		FinSi
		
	Hasta Que otravez==Falso
	
FinProceso
