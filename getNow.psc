Algoritmo getNow
	
	///Francesca Masiel Mora
	///21-EIIN-1-006
	Dimension clientes[20];
	Definir turno Como Entero;
	Definir opc Como Entero;
	
	Repetir
		Imprimir "Seleccione una opción: ";
		Imprimir "1: Añadir cliente a cola";
		Imprimir "2: Despachar cliente";
		Imprimir "3: Ver Cola";
		Imprimir "4: Salir";
		Leer opc;
		
		Segun opc Hacer
			1:
				Si turno<20 Entonces
					turno=turno+1;
					clientes[turno]=addClient;
				SiNo
					Imprimir "No hay plaza disponible";
				FinSi
				
			2:
				Si turno>0 Entonces
					Dimension newClientes[20]
					Para i=1 Hasta 19 Hacer
						newClientes[i]=clientes[i+1];
					FinPara
					Para i=1 Hasta 20 Hacer
						clientes[i]=newClientes[i]
					FinPara
					turno=turno-1;
				SiNo
					Imprimir "No ha clientes en turno";
				FinSi
			3:	Si turno=0 Entonces
					Imprimir "Cola vacía"
				SiNo
				Para i=1 Hasta 20 Hacer
						Si Longitud(clientes[i])>0 Entonces
							Imprimir "Turno "+ConvertirATexto(i)+": "+ clientes[i];
						FinSi
					FinPara	
				FinSi
		FinSegun
	Hasta Que opc>3

FinAlgoritmo

SubProceso 	client=addClient
	Mientras Longitud(client)<3 Hacer
		Imprimir "Ingrese el nombre del cliente";
		Leer client;
	FinMientras
FinSubProceso

	