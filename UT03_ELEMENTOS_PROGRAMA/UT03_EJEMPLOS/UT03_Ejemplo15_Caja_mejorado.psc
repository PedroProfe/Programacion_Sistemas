Proceso UT03_Ejemplo15_Caja_mejorado
	
	//El programa parte de un saldo inicial en Caja.
	//El usuario introduce el valor del importe que quiere sacar
	//El programa resta el importe mientras el saldo sea mayor a 100 euros
	
	Definir saldo Como Real;
	Definir importe Como Real;
	
	Escribir "Introduzca saldo inicial en euros: ";
	saldo<-0;
	// Introducimos una mejora para controlar que comenzamos
	// con saldo positivo
	Mientras saldo<=0 Hacer
		Leer saldo;
		Si saldo<=0 Entonces
			Escribir "Saldo incorrecto. Inténtalo de nuevo: " Sin Saltar;
		FinSi
	FinMientras
	
	Mientras saldo>100 Hacer
		Escribir "Introduzca importe para sacar en euros: " Sin Saltar;
		
		// Introducimos esta mejora para controlar que el importe
		// siempre será positivo
		importe<-0;
		Mientras importe<=0 Hacer
			Leer importe;
			Si importe<=0 Entonces
				Escribir "Importe incorrecto. Inténtalo de nuevo: " sin saltar;
			FinSi
		FinMientras
		
			
		si importe<=saldo-100 Entonces
			saldo<-saldo-importe;
		SiNo
			Escribir "No tienes suficiente dinero.";
		FinSi
		Escribir "Saldo actual: ",saldo, " euros.";	
	FinMientras
	
	Escribir "No se puede seguir operando. Saldo final: ",saldo, " euros.";
	
FinProceso