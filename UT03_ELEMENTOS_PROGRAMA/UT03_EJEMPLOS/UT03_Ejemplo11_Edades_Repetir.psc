Proceso UT03_Ejemplo11_Edades_Repetir
	
	//El programa escuchará una serie de valores (edades)
	//hasta que el usuario introduzca un valor negativo o cero
	//y a continuación se mostrará el promedio
	Definir acumulador Como Real;
	Definir contador Como Entero;
	Definir edad Como Entero;
	acumulador<-0;
	contador<-0;
	
	Repetir
		Escribir "Introduzca edad (0 o negativa para finalizar): " Sin Saltar;
		Leer edad;
		Si edad>0 Entonces
			acumulador<-acumulador+edad;
			contador<-contador+1;
		FinSi
	Hasta Que edad<=0;
	
	Si contador>0 Entonces
		Escribir "Edad media: ",acumulador/contador;
	SiNo
		Escribir "No has metido ningún valor, colega.";
	FinSi
	
FinProceso
