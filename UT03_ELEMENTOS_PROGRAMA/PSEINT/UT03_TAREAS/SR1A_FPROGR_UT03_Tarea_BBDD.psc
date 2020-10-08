//IES Clara del Rey
//Módulo: Fundamentos de Programación
//Profesor: José Antonio Jiménez - jajprofe@gmail.com

//Programa que mantiene una base de datos de empleados en memoria
//realizado como ejercicio de clase

Subproceso asignarValores(nombre,apellido1,apellido2,edad,salario)
//Subproceso para dar de alta los empleados con sus datos	
	nombre[0]<-"Pedro";
	nombre[1]<-"Amalia";	
	nombre[2]<-"Eva";
	nombre[3]<-"Jorge";
	nombre[4]<-"Mario";
	nombre[5]<-"Andrés";
	nombre[6]<-"Antonio";
	nombre[7]<-"Juliana";
	nombre[8]<-"Natalia";
	nombre[9]<-"David";
	
	apellido1[0]<-"Caamaño";
	apellido1[1]<-"León";	
	apellido1[2]<-"Vicente";
	apellido1[3]<-"Panadero";
	apellido1[4]<-"Sevilla";
	apellido1[5]<-"Coello";
	apellido1[6]<-"Villa";
	apellido1[7]<-"Coca";
	apellido1[8]<-"Muñoz";
	apellido1[9]<-"García";
	
	apellido2[0]<-"Alonso";
	apellido2[1]<-"Rodríguez";	
	apellido2[2]<-"Fuentes";
	apellido2[3]<-"Murcia";
	apellido2[4]<-"Guirao";
	apellido2[5]<-"Funes";
	apellido2[6]<-"Rosales";
	apellido2[7]<-"Jiménez";
	apellido2[8]<-"Pérez";
	apellido2[9]<-"Torres";
	
	edad[0]<-34;
	edad[1]<-27;	
	edad[2]<-40;
	edad[3]<-28;
	edad[4]<-42;
	edad[5]<-55;
	edad[6]<-51;
	edad[7]<-23;
	edad[8]<-49;
	edad[9]<-61;
	
	salario[0]<-1200;
	salario[1]<-850;	
	salario[2]<-1500;
	salario[3]<-900;
	salario[4]<-1500;
	salario[5]<-1800;
	salario[6]<-1600;
	salario[7]<-720;
	salario[8]<-1500;
	salario[9]<-2500;
	
FinSubProceso

//OPCION 1 - Listado
SubProceso listadoTotal(nombre,apellido1,apellido2,edad,salario)
	Definir i Como Entero;
	Para i<-0 hasta 9 Hacer
		Escribir nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";

FinSubProceso

//OPCION 2 - Listado entre edades
SubProceso listadoEdades(nombre,apellido1,apellido2,edad,salario)
	Definir i,edadmin,edadmax Como Entero;
	edadmin<-0;
	edadmax<-0;
	Repetir
		Escribir "Introduzca la edad mínima: " Sin Saltar;
		Leer edadmin;
		Escribir "Introduzca la edad máxima: " Sin Saltar;
		Leer edadmax;
	Hasta Que edadmax>=edadmin y edadmax>=18 y edadmin>=18
	
	Para i<-0 hasta 9 Hacer
		Si edad[i] >= edadmin y edad[i] <= edadmax Entonces
			Escribir nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
		FinSi
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	
FinSubProceso

//OPCION 3 - Listado entre salarios
SubProceso listadoSalarios(nombre,apellido1,apellido2,edad,salario)
	Definir i,salariomin,salariomax Como Entero;
	salariomin<-0;
	salariomax<-0;
	Repetir
		Escribir "Introduzca el salario mínimo: " Sin Saltar;
		Leer salariomin;
		Escribir "Introduzca el salario máximo: " Sin Saltar;
		Leer salariomax;
	Hasta Que salariomax>=salariomin
	
	Para i<-0 hasta 9 Hacer
		Si salario[i] >= salariomin y salario[i] <= salariomax Entonces
			Escribir nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
		FinSi
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	
FinSubProceso


//OPCION 4 - Cambio de salario
SubProceso cambiaSalario(nombre,apellido1,apellido2,edad,salario)
	Definir i,empleado,nuevosalario Como Entero;
	Para i<-0 hasta 9 Hacer
		Escribir i,": ",nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	Repetir
		Escribir "Seleccionar el empleado a modificar: " Sin Saltar;
		Leer empleado;
	Hasta Que empleado>=0 y empleado<=9
	Escribir empleado,": ",nombre[empleado]," ",apellido1[empleado]," ",apellido2[empleado];
	Escribir "Introduzca nuevo salario: ";
	Leer nuevosalario;
	salario[empleado]<-nuevosalario;
	Escribir "Datos modificados:";
	Escribir empleado,": ",nombre[empleado]," ",apellido1[empleado]," ",apellido2[empleado]," - Edad: ",edad[empleado]," - Salario: ",salario[empleado];
	
FinSubProceso

//OPCION 5 - Consulta de salario
SubProceso consultaSalario(nombre,apellido1,apellido2,edad,salario)
	Definir i,empleado Como Entero;
	Para i<-0 hasta 9 Hacer
		Escribir i,": ",nombre[i]," - ",apellido1[i]," - ",apellido2[i];
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	Repetir
		Escribir "Seleccionar el empleado para consulta: " Sin Saltar;
		Leer empleado;
	Hasta Que empleado>=0 y empleado<=9
	Escribir empleado,": ",nombre[empleado]," ",apellido1[empleado]," ",apellido2[empleado];
	Escribir "Su salario es: ", salario[empleado];
		
FinSubProceso

//OPCION 6 - Cálculo de salario medio
SubProceso salarioMedio(nombre,apellido1,apellido2,edad,salario)
	Definir i,suma,numempleados Como Entero;
	Definir media Como Real;
	numempleados<-0;
	suma<-0;
	Para i<-0 hasta 9 Hacer
		Escribir i,": ",nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
		suma<-suma+salario[i];
		numempleados<-numempleados+1;
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	media<-suma/numempleados;
	Escribir "El salario medio es: ",media;
	
FinSubProceso

//OPCION 7 - Cálculo de edad media
SubProceso edadMedia(nombre,apellido1,apellido2,edad,salario)
	Definir i,suma,numempleados Como Entero;
	Definir media Como Real;
	numempleados<-0;
	suma<-0;
	Para i<-0 hasta 9 Hacer
		Escribir i,": ",nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
		suma<-suma+edad[i];
		numempleados<-numempleados+1;
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	media<-suma/numempleados;
	Escribir "La edad media es: ",media;
	
FinSubProceso

//OPCION 8 - Orden por salarios
SubProceso ordenSalario(nombre,apellido1,apellido2,edad,salario)
	
	Definir i,j,aux Como Entero;
	Dimension indice[10];
	Definir indice Como Entero;
	
	Escribir "El listado completo original es: ";
	Para i<-0 hasta 9 Hacer
		Escribir nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	
	Escribir "Ahora vamos a ordenar por salario";
	
	indice[0]<-0;
	indice[1]<-1;
	indice[2]<-2;
	indice[3]<-3;
	indice[4]<-4;
	indice[5]<-5;
	indice[6]<-6;
	indice[7]<-7;
	indice[8]<-8;
	indice[9]<-9;
	
	Para i<-0 hasta 8 Hacer
		Para j<-i+1 hasta 9 Hacer
			si salario[indice[i]]>salario[indice[j]] Entonces
				aux<-indice[i];
				indice[i]<-indice[j];
				indice[j]<-aux;
			FinSi
		FinPara
	FinPara
	
	Escribir "El listado ordenado sería: ";
	Para i<-0 hasta 9 Hacer
		Escribir nombre[indice[i]]," - ",apellido1[indice[i]]," - ",apellido2[indice[i]]," - ",edad[indice[i]]," - ",salario[indice[i]];
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	
FinSubProceso

//OPCION 9 - Orden por edad
SubProceso ordenEdad(nombre,apellido1,apellido2,edad,salario)
	
	Definir i,j,aux Como Entero;
	Dimension indice[10];
	Definir indice Como Entero;
	
	Escribir "El listado completo original es: ";
	Para i<-0 hasta 9 Hacer
		Escribir nombre[i]," - ",apellido1[i]," - ",apellido2[i]," - ",edad[i]," - ",salario[i];
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	
	Escribir "Ahora vamos a ordenar por edad";
	
	indice[0]<-0;
	indice[1]<-1;
	indice[2]<-2;
	indice[3]<-3;
	indice[4]<-4;
	indice[5]<-5;
	indice[6]<-6;
	indice[7]<-7;
	indice[8]<-8;
	indice[9]<-9;
	
	Para i<-0 hasta 8 Hacer
		Para j<-i+1 hasta 9 Hacer
			si edad[indice[i]]>edad[indice[j]] Entonces
				aux<-indice[i];
				indice[i]<-indice[j];
				indice[j]<-aux;
			FinSi
		FinPara
	FinPara
	
	Escribir "El listado ordenado sería: ";
	Para i<-0 hasta 9 Hacer
		Escribir nombre[indice[i]]," - ",apellido1[indice[i]]," - ",apellido2[indice[i]]," - ",edad[indice[i]]," - ",salario[indice[i]];
	FinPara
	Escribir "Fin del listado";
	Escribir "---------------";
	
FinSubProceso


//PROGRAMA PRINCIPAL
Proceso Empleados
	
	Dimension nombre[10];
	Dimension apellido1[10];
	Dimension apellido2[10];
	Dimension edad[10];
	Dimension salario[10];
	
	Definir nombre,apellido1,apellido2 como cadena;
	Definir edad,salario Como Entero;
	Definir i,j,opcionmenu Como Entero;
	Definir continuar Como Caracter;
	
	asignarValores(nombre,apellido1,apellido2,edad,salario);
	
	Repetir
		Limpiar Pantalla;
		Escribir "BASE DE DATOS DE EMPLEADOS";
		Escribir "--------------------------";
		Escribir "";
		Escribir "Menú de opciones";
		Escribir "----------------";
		Escribir "";
		Escribir "0: Salir";
		Escribir "1: Listar todos los empleados con sus datos";
		Escribir "2: Listar los empleados cuya edad esté comprendida dentro de un rango";
		Escribir "3: Listar los empleados cuyo salario esté comprendido dentro de un rango";
		Escribir "4: Modificar el salario de un empleado";
		Escribir "5: Conocer el salario de un empleado";
		Escribir "6: Calcular el salario medio de todos los empleados";
		Escribir "7: Conocer la edad media de todos los empleados";
		Escribir "8: Ordenar los empleados por salario";
		Escribir "9: Ordenar los empleados por edad";
		Escribir "-----";
		Escribir "Seleccione opción: " Sin Saltar;
		Leer opcionmenu;
		Limpiar Pantalla;
		Si opcionmenu<0 o opcionmenu>9 Entonces
			Escribir "La opción seleccionada no es válida. Repita elección";
			Escribir "-----";
		SiNo
			Segun opcionmenu hacer
				1:
					Escribir "Listado de todos los empleados";
					Escribir "------------------------------";
					listadoTotal(nombre,apellido1,apellido2,edad,salario);
				2:
					Escribir "Listado de todos los empleados entre dos edades";
					Escribir "-----------------------------------------------";		
					listadoEdades(nombre,apellido1,apellido2,edad,salario);
				3:
					Escribir "Listado de todos los empleados entre dos salarios";
					Escribir "-------------------------------------------------";	
					listadoSalarios(nombre,apellido1,apellido2,edad,salario);
				4:
					Escribir "Modificar el salario de un empleado";
					Escribir "-----------------------------------";		
					cambiaSalario(nombre,apellido1,apellido2,edad,salario);
				5:
					Escribir "Conocer el salario de un empleado";
					Escribir "---------------------------------";	
					consultaSalario(nombre,apellido1,apellido2,edad,salario);
				6:
					Escribir "Salario medio de los empleados";
					Escribir "------------------------------";	
					salarioMedio(nombre,apellido1,apellido2,edad,salario);
				7:
					Escribir "Edad media de los empleados";
					Escribir "---------------------------";		
					edadMedia(nombre,apellido1,apellido2,edad,salario);
				8:
					Escribir "Ordenar los empleados por salario";
					Escribir "--------------------------------";
					ordenSalario(nombre,apellido1,apellido2,edad,salario);
				9:
					Escribir "Ordenar los empleados por edad";
					Escribir "--------------------------------";
					ordenEdad(nombre,apellido1,apellido2,edad,salario);
			FinSegun
			Si opcionmenu<>0 Entonces
				Repetir
					Escribir "Volver al menú (s/n)?";
					Leer continuar;
				Hasta Que continuar="s";
			FinSi
		FinSi
	Hasta Que opcionmenu=0
	
	
FinProceso
