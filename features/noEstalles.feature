# language: es

Característica: Juego de Buscaminas

Escenario: Titulo
	Dado Que voy a la portada
	Entonces veo "No Estalles"

Escenario: Validar Bomba
	Dado Que voy a la portada
	Y la le doy clic al boton 3
	Entonces el resultado es bomba
