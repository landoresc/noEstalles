class NoEstalles

	def initialize
		@tablero = [[1,1,0],[-1,1,1],[-1,-1,1]]
		@puntajeJugador = 0
		@vidasJugador = 1
	end

	def iniciarVidas
		@vidasJugador = 1
		return @vidasJugador
	end

	def iniciarPuntos
		@puntajeJugador = 0
		return @puntajeJugador
	end

	def getVidas
		return @vidasJugador
	end

	def getPuntos
		return @puntajeJugador
	end

	def eligeCelda posicion
		if @tablero[posicion][posicion] >= 0
			@puntajeJugador += 1
		else
			@vidasJugador = 0
		end

		return @puntajeJugador
	end

	def getTablero
		return @tablero	
	end

	def getBombas
		return 3	
	end

	def getEspaciosBlanco
		return 3
	end

	def getCeldasBombaContorno
		return 9
	end

end
