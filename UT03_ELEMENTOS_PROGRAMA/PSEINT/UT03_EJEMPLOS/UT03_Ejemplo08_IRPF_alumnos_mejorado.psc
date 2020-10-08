Proceso UT03_Ejemplo08_IRPF
	Definir sueldo Como Real;
	Definir impuesto Como Real;
	
	Repetir
		
		Escribir "¿Cuánto dinero ganas en un año?";
		Leer sueldo;
		
		Si sueldo<=12000 Entonces
			impuesto<-0;			
		SiNo
			Si sueldo<=20000 Entonces
				impuesto<-10;
			SiNo
				Si sueldo<=30000 Entonces
					impuesto<-20;
				sino
					Si sueldo<=40000 Entonces
						impuesto<-30;
					sino
						Si sueldo>40000 Entonces
							impuesto<-45;
						FinSi
					FinSi
				FinSi
			Finsi
		FinSi
		
		Escribir "Pagas ", (sueldo*impuesto/100);
		
	Hasta Que Falso
FinProceso
