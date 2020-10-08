// Programa que pregunta salarios, edades y sexo a 10 empleados para realizar una estadística.
// Una vez obtenidos los datos, se obtiene una estadística por franjas de edad y por edades,
// calculando la media salarial por franjas de edad y por sexo.
// Se definen 6 franjas de edad: 18-20, 20-25, 25-35, 35-45, 45-60 y mayores de 60.

// Ayuda: para el diseño de este programa podemos pensar en almacenar los datos de entrada
// en una matriz denominada Salarios, con 10 filas (empleados) y 2 columnas (sexo y sueldo)
// Para discriminar el sexo utilizaremos una variable numérica que podrá tener dos valores:
// 0 si es hombre, 1 si es mujer.

// Para procesar la información podemos pensar en generar una matriz de 6 filas y 4 columnas,
// Las columnas pueden ser:
// 0-sueldo total hombres 1-número total hombres
// 2-sueldo total mujeres 3-número total mujeres
// Estos datos se pueden ir acumulando a medida que se introducen al principio,
// de manera que una vez guardados, para calcular las medias solo hay que dividir

Proceso Franjas_Salariales
	// Definimos la matriz para recoger datos
	// 10 filas, una por empleado
	// Columna 0 - Sexo (0-Hombre, 1-Mujer)
	// Columna 1 - Sueldo	
	Definir Salarios Como Entero;
	Dimension Salarios[10,2];
	// Definimos las variables para cálculos
	// 6 franjas salariales, 6 filas
	// Columna 0 - Sueldo total hombres
	// Columna 1 - Número total hombres
	// Columna 2 - Sueldo total mujeres
	// Columna 3 - Número total mujeres
	Definir CalculoSueldos Como Real;
	Dimension CalculoSueldos[6,4];
	// Definiciones
	Definir numEmpleado Como Entero;
	Definir sueldo Como Real;
	Definir sexo Como Caracter;
	Definir edad Como Entero;
	Definir franjaEdad Como Entero;
	numEmpleado <- 0;
	Repetir
		Salarios[numEmpleado,1]<-0;
		numEmpleado <- numEmpleado+1;
	Hasta Que numEmpleado==10
	franjaEdad <- 0;
	Repetir
		CalculoSueldos[franjaEdad,0]<-0;
		CalculoSueldos[franjaEdad,1]<-0;
		CalculoSueldos[franjaEdad,2]<-0;
		CalculoSueldos[franjaEdad,3]<-0;
		franjaEdad <- franjaEdad+1;
	Hasta Que franjaEdad==6
	
	// Programa principal
	numEmpleado <- 0;
	Repetir
		Escribir 'Empleado ',numEmpleado;
		Escribir '   Introduzca la edad: ', Sin Saltar;
		Repetir
			Leer edad;
			Si edad<18 Entonces
				Escribir 'Este programa es para mayores de edad.';
			SiNo
				Si edad>65 Entonces
					Escribir 'Este programa no admite jubilados.';
				FinSi
			FinSi
		Hasta Que edad>=18 Y edad<=65
		Si edad<20 Entonces
			franjaEdad <- 0;
		SiNo
			Si edad<=25 Entonces
				franjaEdad <- 1;
			SiNo
				Si edad<=35 Entonces
					franjaEdad <- 2;
				SiNo
					Si edad<=45 Entonces
						franjaEdad <- 3;
					SiNo
						Si edad<=60 Entonces
							franjaEdad <- 4;
						SiNo
							franjaEdad <- 5;
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir '   Introduzca su sexo: ', Sin Saltar;
		Repetir
			Leer sexo;
			Si (sexo!='H') Y (sexo!='M') Entonces
				Escribir 'Dato inválido.';
			FinSi
		Hasta Que sexo=='H' O sexo=='M'
		Escribir '   Introduzca el sueldo: ', Sin Saltar;
		Leer sueldo;
		// Rellenamos la matriz de datos de entrada
		// Recordamos el formato:
		// Matriz de 10 filas, una por empleado
		// Columna 1 - Sexo (0-Hombre, 1-Mujer)
		// Columna 2 - Sueldo	
		Si sexo=='H' Entonces
			Salarios[numEmpleado,0]<-0;
		SiNo
			Salarios[numEmpleado,0]<-1;
		FinSi
		Salarios[numEmpleado,1]<-sueldo;
		// Rellenamos la matriz de cálculos realizados
		// Recordamos el formato:
		// 6 franjas salariales, 6 filas
		// Columna 1 - Sueldo total hombres
		// Columna 2 - Número total hombres
		// Columna 3 - Sueldo total mujeres
		// Columna 4 - Número total mujeres
		Si sexo=='H' Entonces
			CalculoSueldos[franjaEdad,1]<-CalculoSueldos[franjaEdad,1]+1;
			CalculoSueldos[franjaEdad,0]<-CalculoSueldos[franjaEdad,0]+sueldo;
		SiNo
			CalculoSueldos[franjaEdad,3]<-CalculoSueldos[franjaEdad,3]+1;
			CalculoSueldos[franjaEdad,2]<-CalculoSueldos[franjaEdad,2]+sueldo;
		FinSi
		numEmpleado <- numEmpleado+1;
	Hasta Que numEmpleado==9
	
	// Imprimir resultados
	franjaEdad <- 0;
	Repetir
		Escribir 'Franja de edad ',franjaEdad;
		Si CalculoSueldos[franjaEdad,1]!=0 Entonces
			Escribir '   Salario medio hombres: ',CalculoSueldos[franjaEdad,0]/CalculoSueldos[franjaEdad,1],' euros';
		FinSi
		Si CalculoSueldos[franjaEdad,3]!=0 Entonces
			Escribir '   Salario medio mujeres: ',CalculoSueldos[franjaEdad,2]/CalculoSueldos[franjaEdad,3],' euros';
		FinSi
		franjaEdad <- franjaEdad+1;
	Hasta Que franjaEdad==6
	
	// Mejorar el programa utilizando estructuras Para (For)
	
	// Mejorar el programa incluyendo un menú que pregunte al usuario si, dada una franja de edad
	// quiere saber el salario medio total, el salario medio de hombres o el salario medio de mujeres
	// Utilizar una estructura "Según"
	
FinProceso

