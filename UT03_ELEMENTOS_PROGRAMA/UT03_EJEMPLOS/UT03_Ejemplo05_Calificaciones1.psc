Proceso UT03_Ejemplo05_Calificaciones1
	
	Definir nombre como Cadena;
	Definir nota como Entero;
	
	Repetir
		
		Escribir "Dime tu nombre: ";
		Leer nombre;
		
		Escribir "Dime tu nota: ";
		Leer nota;
		
		Escribir "Tienes un " Sin Saltar;
		
		si nota<5 Entonces
			escribir " Suspenso";
		FinSi
		
		si nota>=5 y nota<7 Entonces
			escribir " Aprobado";
		FinSi
		
		si nota>=7 & nota<9 Entonces
			escribir " Notable";
		FinSi
		
		si nota>=9 Entonces
			escribir " Sobresaliente";
		FinSi

		
	Hasta Que Falso
	
FinProceso
