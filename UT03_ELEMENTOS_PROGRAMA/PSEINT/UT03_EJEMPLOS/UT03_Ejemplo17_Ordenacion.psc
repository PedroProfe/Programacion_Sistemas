Proceso UT03_Ejemplo17_Ordenacion
	
	Definir nombres como Cadena;
	Dimension nombres[5];
	
	Definir i,j como Entero;
	Definir aux como Cadena;
	
	Para i<-0 hasta 4 Hacer
		Escribir "Nombre número ",i+1,": ";
		Leer nombres[i];
	FinPara
	
	//Ordenamos
	Para i<-0 hasta 3 Hacer
		Para j<-i+1 hasta 4 Hacer
			Si nombres[i]>nombres[j] Entonces
				aux<-nombres[i];
				nombres[i]<-nombres[j];
				nombres[j]<-aux;
			FinSi
		FinPara
	FinPara
	
	//Presentamos la información
	Escribir "Lista ordenada:";
	Escribir "---------------";
	
	Para i<-0 hasta 4 Hacer
			Escribir nombres[i];
	FinPara
	
FinProceso
