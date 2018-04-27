require './lib/noEstalles.rb'

describe "Juego No Estalles!" do

	it "Inicio del juego" do
		tablero = NoEstalles.new
		tablero.iniciarVidas.should == 1
		tablero.iniciarPuntos.should == 0
	end
	
	it "Selecciona fila 1, columna 1 y sigue vivo" do
		tablero = NoEstalles.new
		tablero.eligeCelda 1
		tablero.getPuntos.should == 1
		tablero.getVidas.should == 1
	end

	it "Selecciona fila 1, columna 2 y sigue vivo" do
		tablero = NoEstalles.new
		tablero.eligeCelda 2
		tablero.getVidas.should == 1
	end

end
