Proceso FranjasSalariales
	
	Definir Salarios Como Entero;
	Dimension Salarios[10,3];
	
	Definir CalculoSueldos Como Real;
	Dimension CalculoSueldos[6,4];
	
	//Inicializar el array CalculoSueldos con ceros
	Definir i,j Como Entero;
	Para i<-0 hasta 5 Hacer
		Para j<-0 hasta 3 Hacer
			CalculoSueldos[i,j]<-0;
		FinPara
	FinPara
	
	//Preguntar edad, sueldo y sexo a los encuestados
	Definir edad,sexo,sueldo,contador Como Entero;
	
	contador<-0;
	
	Repetir
		Escribir "Introduzca edad: ";
		Leer edad;
		Escribir "Introduzca su sexo (0-Hombre; 1-Mujer): ";
		Leer sexo;
		Escribir "Introduzca su sueldo: ";
		Leer sueldo;
		
		
		//Actualizar el array de entrada
		Salarios[contador,0]<-sueldo;
		Salarios[contador,1]<-edad;
		Salarios[contador,2]<-sexo;
		
		//Actualizar el array de salida
		Si edad>=18 y edad<20 Entonces
			Si sexo==0 Entonces
				CalculoSueldos[0,0]<-CalculoSueldos[0,0]+1;
				CalculoSueldos[0,2]<-CalculoSueldos[0,2]+sueldo;
			SiNo
				CalculoSueldos[0,1]<-CalculoSueldos[0,1]+1;
				CalculoSueldos[0,3]<-CalculoSueldos[0,3]+sueldo;
			FinSi
		FinSi
		Si edad>=20 y edad<26 Entonces
			Si sexo==0 Entonces
				CalculoSueldos[1,0]<-CalculoSueldos[1,0]+1;
				CalculoSueldos[1,2]<-CalculoSueldos[1,2]+sueldo;
			SiNo
				CalculoSueldos[1,1]<-CalculoSueldos[1,1]+1;
				CalculoSueldos[1,3]<-CalculoSueldos[1,3]+sueldo;
			FinSi
		FinSi
		Si edad>25 y edad<36 Entonces
			Si sexo==0 Entonces
				CalculoSueldos[2,0]<-CalculoSueldos[2,0]+1;
				CalculoSueldos[2,2]<-CalculoSueldos[2,2]+sueldo;
			SiNo
				CalculoSueldos[2,1]<-CalculoSueldos[2,1]+1;
				CalculoSueldos[2,3]<-CalculoSueldos[2,3]+sueldo;
			FinSi
		FinSi
		Si edad>35 y edad<46 Entonces
			Si sexo==0 Entonces
				CalculoSueldos[3,0]<-CalculoSueldos[3,0]+1;
				CalculoSueldos[3,2]<-CalculoSueldos[3,2]+sueldo;
			SiNo
				CalculoSueldos[3,1]<-CalculoSueldos[3,1]+1;
				CalculoSueldos[3,3]<-CalculoSueldos[3,3]+sueldo;
			FinSi
		FinSi
		Si edad>45 y edad<61 Entonces
			Si sexo==0 Entonces
				CalculoSueldos[4,0]<-CalculoSueldos[4,0]+1;
				CalculoSueldos[4,2]<-CalculoSueldos[4,2]+sueldo;
			SiNo
				CalculoSueldos[4,1]<-CalculoSueldos[4,1]+1;
				CalculoSueldos[4,3]<-CalculoSueldos[4,3]+sueldo;
			FinSi
		FinSi
		Si edad>=60 Entonces
			Si sexo==0 Entonces
				CalculoSueldos[5,0]<-CalculoSueldos[5,0]+1;
				CalculoSueldos[5,2]<-CalculoSueldos[5,2]+sueldo;
			SiNo
				CalculoSueldos[5,1]<-CalculoSueldos[5,1]+1;
				CalculoSueldos[5,3]<-CalculoSueldos[5,3]+sueldo;
			FinSi
		FinSi
		
		contador<-contador+1;
	Hasta Que contador==10;
	
	//Salida de información
	
	Para contador<-0 hasta 5 Hacer
		
		Escribir "Franja de edad ",contador,": ";
		//Escribir total hombres
		Escribir "   Total hombres: ", CalculoSueldos[contador,0] ; 
		//Escribir total mujeres
		Escribir "   Total mujeres: ", CalculoSueldos[contador,1] ; 
		
		Si CalculoSueldos[contador,0]>0 Entonces
			//Escribir sueldo medio hombres
			Escribir "   Sueldo medio hombres: ", CalculoSueldos[contador,2]/CalculoSueldos[contador,0]; 
		SiNo
			Escribir "   No hay datos de hombres.";
		FinSi
		
		Si CalculoSueldos[contador,1]>0 Entonces
			//Escribir sueldo medio mujeres
			Escribir "   Sueldo medio mujeres: ", CalculoSueldos[contador,3]/CalculoSueldos[contador,1]; 
		Sino	
			Escribir "   No hay datos de mujeres.";
		Finsi
		
	FinPara
	
	
	
FinProceso
