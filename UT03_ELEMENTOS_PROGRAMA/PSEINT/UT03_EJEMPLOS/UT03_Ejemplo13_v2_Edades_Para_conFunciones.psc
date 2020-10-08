Proceso UT03_Ejemplo13_Edades_Para_conFunciones
	
	//El programa escuchar� una serie de valores (edades)
	//hasta que el usuario introduzca un valor negativo o cero
	//y a continuaci�n se mostrar� el promedio
	
	//Esta versi�n permitir� almacenar las edades en un array
	//y calcular� la media con un Subproceso
	
	Definir contador Como Entero;
	Definir alumnos Como Entero;
	Definir edad Como Entero;
	
	//Array para guardar las edades. Debe tener un tama�o fijo.
	//Lo dimensionamos a 30, que ser�a el m�ximo de alumnos
	//permitido por nuestro programa.
	Definir edad_alumno como Entero;
	Dimension edad_alumno[30];
	Definir notas como Entero;
	Dimension notas[30];
	
	
	alumnos<-0;
	Mientras alumnos<=0 o alumnos>30 Hacer
		Escribir "�Cu�ntos alumnos hay en clase? " Sin Saltar;
		Leer alumnos;
		si alumnos<=0 o alumnos>30 Entonces
			Escribir "N�mero de alumnos incorrecto. Int�ntalo otra vez.";
		FinSi
	FinMientras
	
	//A continuaci�n llamamos al subproceso que recoge datos
	Escribir "Introduzca las edades de los alumnos:";
	entradaDatos(edad_alumno,alumnos);
	Escribir "Introduzca las notas:";
	entradaDatos(notas,alumnos);
	
	//A continuaci�n llamamos al subproceso que calcula la media
	Escribir "Edad media: ", CalculoMedio(edad_alumno,alumnos);
	//Y ahora la media de notas:
	Escribir "Nota media: ", CalculoMedio(notas,alumnos);
	
	Escribir "Listado de edades:";
	Para contador<-0 hasta alumnos-1 Hacer
		Escribir edad_alumno[contador]," - " Sin Saltar;
	FinPara
	Escribir "Listado de notas:";
	Para contador<-0 hasta alumnos-1 Hacer
		Escribir notas[contador]," - " Sin Saltar;
	FinPara
	Escribir "";
	
FinProceso

//Sacamos el c�digo de c�lculo de la media a un Subproceso
SubProceso promedio <- CalculoMedio (elementos,numero_elementos)
	Definir contador Como Entero;
	Definir promedio como Real;
	promedio<-0;
	
	Para contador<-0 hasta numero_elementos-1 Hacer
		promedio <-promedio+elementos[contador];
	FinPara
	promedio<-promedio/numero_elementos;
	
FinSubProceso

//Sacamos el c�digo de entrada de datos a un subproceso
Subproceso entradaDatos(elementos,numero_elementos)
	Definir contador,dato Como Entero;
	
	Para contador<-0 hasta numero_elementos-1 Con Paso 1 Hacer
		Escribir "Introduzca dato: " Sin Saltar;
		dato<-0;
		Mientras dato<=0 Hacer
			leer dato;
			si dato<=0 Entonces
				Escribir "Dato incorrecto, introd�zcalo de nuevo: " Sin Saltar;
			FinSi
		FinMientras
		elementos[contador]<-dato;
	FinPara
	
FinSubProceso
