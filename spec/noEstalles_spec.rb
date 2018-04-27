require './lib/noEstalles.rb'

describe "Juego No Estalles!" do

	it "Inicio del juego" do
		tablero = NoEstalles.new
		tablero.iniciarVidas.should == 1
		tablero.iniciarPuntos.should == 0
	end
	
	it "Selecciona una celda y sigue vivo" do
		tablero = NoEstalles.new
		tablero.getVidas.should == 1
	end

	it "Verificar si hay Bombas" do
		tablero = NoEstalles.new
		tablero.getBombas.should > 0
	end

	it "Verificar Existencia espacios en Blanco" do
		tablero = NoEstalles.new
		tablero.getEspaciosBlanco.should > 0	
	end

	it "Verificar Celda con Bomba al contorno" do
		tablero = NoEstalles.new
		tablero.getCeldasBombaContorno.should > 0	
	end
	

end
