Proceso UT03_Ejemplo12_Edades_Para
	
	//El programa escuchará una serie de valores (edades)
	//hasta que el usuario introduzca un valor negativo o cero
	//y a continuación se mostrará el promedio
	Definir acumulador Como Real;
	Definir contador Como Entero;
	Definir alumnos Como Entero;
	Definir edad Como Entero;
	acumulador<-0;
	
	alumnos<-0;
	Mientras alumnos<=0 Hacer
		Escribir "¿Cuántos alumnos hay en clase? " Sin Saltar;
		Leer alumnos;
	FinMientras
	
	Para contador<-1 hasta alumnos Con Paso 1 Hacer
		Escribir "Introduzca edad (0 o negativa para finalizar): " Sin Saltar;
		Leer edad;
		acumulador<-acumulador+edad;
	FinPara
	
	Escribir "Edad media: ",acumulador/alumnos;
	
FinProceso
