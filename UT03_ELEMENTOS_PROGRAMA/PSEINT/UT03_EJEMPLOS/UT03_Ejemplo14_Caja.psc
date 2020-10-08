Proceso UT03_Ejemplo14_Caja
	
	//El programa parte de un saldo inicial en Caja
	//El usuario introduce el valor del importe que quiere sacar
	//El programa lo resta mientras el saldo sea mayor a 100 euros
	Definir saldo Como Real;
	Definir importe Como Real;
	
	Escribir "Introduzca saldo inicial: ";
	Leer saldo;
	
	Mientras saldo>100 Hacer
		Escribir "Introduzca importe: " Sin Saltar;
		Leer importe;
		si importe<=saldo-100 Entonces
			saldo<-saldo-importe;
		FinSi
		Escribir "Saldo actual: ",saldo;	
	FinMientras
	
	Escribir "No se puede seguir operando. Saldo final: ",saldo;
	
FinProceso