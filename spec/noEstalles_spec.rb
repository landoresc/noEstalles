require './lib/noEstalles.rb'

describe "Juego No Estalles!" do

	it "Inicio del juego" do
		tablero = NoEstalles.new
		tablero.iniciarVidas.should == 3
		tablero.iniciarPuntos.should == 0
	end
end
