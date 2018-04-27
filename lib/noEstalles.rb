class NoEstalles

	def initialize
		@tablero = [[1,1,0],[-1,1,1],[-1,-1,1],[-1,-1,1]]
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

	def incrementarDecrementarPuntaje(fila, columna)
		if @tablero[fila][columna] >= 0
			@puntajeJugador += 1
		else
			@puntajeJugador = 0
		end

		return @puntajeJugador
	end

	def getTablero
		@tableroHTML = ""
		for i in(0..@tablero.length()-1)
			@tableroHTML+="<tr>"
			for j in(0..@tablero.length()-1)
				@tableroHTML+="<td>"
		 		@tableroHTML+= getCeldaFila(i,j)
				@tableroHTML+="</td>"
			end
			@tableroHTML+="</tr>"
		end
		return @tableroHTML
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
	
	def getCeldaFila (fila, columna)
		celda = "<button name='c" + columna.to_s + "' value='" + @tablero[fila] [columna].to_s + "' class='btn_InicioJuego' onClick='validarCelda(this)'></button>"
	end

end
