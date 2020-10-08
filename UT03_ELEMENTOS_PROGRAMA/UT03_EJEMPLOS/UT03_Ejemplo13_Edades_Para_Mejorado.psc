Proceso UT03_Ejemplo13_Edades_Para_Mejorado
	
	//El programa escuchará una serie de valores (edades)
	//hasta que el usuario introduzca un valor negativo o cero
	//y a continuación se mostrará el promedio
	
	//Esta versión permitirá almacenar las edades en un array
	//y calculará la media con un Subproceso
	
	Definir contador Como Entero;
	Definir alumnos Como Entero;
	Definir edad Como Entero;
	
	//Array para guardar las edades. Debe tener un tamaño fijo.
	//Lo dimensionamos a 30, que sería el máximo de alumnos
	//permitido por nuestro programa.
	Definir edad_alumno como Entero;
	Dimension edad_alumno[30];
	
	alumnos<-0;
	Mientras alumnos<=0 o alumnos>30 Hacer
		Escribir "¿Cuántos alumnos hay en clase? " Sin Saltar;
		Leer alumnos;
		si alumnos<=0 o alumnos>30 Entonces
			Escribir "Número de alumnos incorrecto. Inténtalo otra vez.";
		FinSi
	FinMientras
	
	//A continuación llamamos al subproceso que recoge datos
	entradaDatos(edad_alumno,alumnos);
	
	//A continuación llamamos al subproceso que calcula la media
	Escribir "Edad media: ", CalculoMedio(edad_alumno,alumnos);
	
	Escribir "Listado de edades:";
	Para contador<-0 hasta alumnos-1 Hacer
		Escribir edad_alumno[contador]," - " Sin Saltar;
	FinPara
	Escribir "";
	
FinProceso

//Sacamos el código de cálculo de la media a un Subproceso
SubProceso mediaEdades <- CalculoMedio (edad_alumno,alumnos)
	Definir contador Como Entero;
	Definir mediaEdades como Real;
	mediaEdades<-0;
	
	Para contador<-0 hasta alumnos-1 Hacer
		mediaEdades<-mediaEdades+edad_alumno[contador];
	FinPara
	mediaEdades<-mediaEdades/alumnos;
	
FinSubProceso

//Sacamos el código de entrada de datos a un subproceso
Subproceso entradaDatos(edad_alumno,alumnos)
	Definir contador,edad Como Entero;
	
	Para contador<-0 hasta alumnos-1 Con Paso 1 Hacer
		Escribir "Introduzca edad: " Sin Saltar;
		edad<-0;
		Mientras edad<=0 Hacer
			leer edad;
			si edad<=0 Entonces
				Escribir "Edad incorrecta, introdúzcala de nuevo: " Sin Saltar;
			FinSi
		FinMientras
		edad_alumno[contador]<-edad;
	FinPara
	
FinSubProceso
