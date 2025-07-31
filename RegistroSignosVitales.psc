Proceso RegistroSignosVitales
	
	// Declaraci�n de variables
	Definir nombrePaciente Como Cadena;
	Definir presionSistolica, presionDiastolica, glucosa Como Real;
	Definir continuar Como Cadena;
	
	Repetir
		Limpiar Pantalla;
		Escribir "=== REGISTRO DE SIGNOS VITALES DEL PACIENTE ===";
		
		// Entrada de datos
		Escribir "Nombre del paciente:";
		Leer nombrePaciente;
		
		Escribir "Presi�n sist�lica (mmHg):";
		Leer presionSistolica;
		
		Escribir "Presi�n diast�lica (mmHg):";
		Leer presionDiastolica;
		
		Escribir "Nivel de glucosa (mg/dL):";
		Leer glucosa;
		
		Escribir "";
		Escribir "=== RESULTADOS ===";
		
		// Evaluaci�n de presi�n arterial
		Si presionSistolica > 130 o presionDiastolica > 80 Entonces
			Escribir "? ALERTA: Presi�n arterial elevada. Consultar con un m�dico.";
		Sino
			Escribir "? Presi�n arterial dentro de los valores normales.";
		FinSi
		
		// Evaluaci�n de glucosa
		Si glucosa < 70 Entonces
			Escribir "? ALERTA: Nivel de glucosa bajo (posible hipoglucemia).";
		Sino
			Si glucosa > 140 Entonces
				Escribir "? ALERTA: Nivel de glucosa alto (posible hiperglucemia).";
			Sino
				Escribir "? Glucosa dentro del rango normal.";
			FinSi
		FinSi
		
		// Mostrar resumen
		Escribir "";
		Escribir "Registro completado para: ", nombrePaciente;
		
		// Preguntar si se quiere registrar otro paciente
		Escribir "";
		Escribir "�Desea registrar otro paciente? (SI/NO):";
		Leer continuar;
	Hasta Que Mayusculas(continuar) <> "SI"
	
FinProceso
