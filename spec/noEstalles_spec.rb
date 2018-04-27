require './lib/noEstalles.rb'

describe "Juego No Estalles!" do

	it "Inicio del Juego" do
		tablero = NoEstalles.new
		tablero.iniciarVidas.should == 1
		tablero.iniciarPuntos.should == 0
		tablero.getTablero[0][0].should > 0 
	end

	
	
	it "Verificar si Posee Vidas" do
		tablero = NoEstalles.new
		tablero.getVidas.should == 1
	end

	it "Verificar si hay Bombas" do
		tablero = NoEstalles.new
		tablero.getBombas.should > 0
	end

	it "Verificar Existencia Espacios en Blanco" do
		tablero = NoEstalles.new
		tablero.getEspaciosBlanco.should > 0	
	end

	it "Verificar Celda con Bomba al Contorno" do
		tablero = NoEstalles.new
		tablero.getCeldasBombaContorno.should > 0	
	end
	
	it "Verificar el Puntaje del Jugador" do
		tablero = NoEstalles.new
		tablero.getPuntos.should >= 0	
	end

	it "Selecciono una Celda e Incremento Puntaje" do
		tablero = NoEstalles.new
		tablero.incrementarDecrementarPuntaje(1,1).should > 0	
	end

	it "Selecciono una Celda y Finaliza Juego" do
		tablero = NoEstalles.new
		tablero.incrementarDecrementarPuntaje(2,1).should == 0	
	end


end
