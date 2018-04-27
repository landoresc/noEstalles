# language: es

Característica: Juego de Buscaminas

Escenario: Titulo
	Dado Que voy a la portada
	Entonces veo "No Estalles"

Escenario: Validar que exista una bomba al iniciar el juego
	Dado Que voy a la portada
	Entonces encuentro que existe una bomba

Escenario: Validar que existan celdas con valores numericos al iniciar el juego
	Dado Que voy a la portada
	Entonces encuentro una celda con valor numerico

Escenario: Validar que existan celdas con valores vacios al iniciar el juego
	Dado Que voy a la portada
	Entonces encuentro una celda con valor vacio
	
Escenario: Validar puntos realizados
	
