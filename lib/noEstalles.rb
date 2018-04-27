class NoEstalles

	def initialize
		@tablero = ["0","0","1","0"]
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

			if @tablero[posicion] = 0
				@puntajeJugador += 1
			else
					@vidasJugador = 0
			end

		return @puntajeJugador
	end

end
