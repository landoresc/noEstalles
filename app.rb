require 'sinatra'
require './lib/noEstalles.rb'

get '/' do
@resultado=""
 erb:index
=begin 
@tablero = NoEstalles.new
	@matriz = @tablero.getTablero

		for i in(0..2)
			for j in(0..2)
		 		@mensaje += @matriz[i][j].to_s
			end
			@mensaje +=">>"
		end
		#[1,1,0],[-1,1,1],[-1,-1,1]

    erb:index
=end
		
end

post '/index' do
	@resultado =params["3"]
	if @resultado.eql?("3")
		@resultado = "bomba"
		@bomba = "background: url(../img/bomba.jpg) no-repeat;"
	end  
	erb:index
end
