require 'sinatra'

get '/' do
	@mensaje = ""
	@bomba ="none"
		@tablero = [[1,1,0],[-1,1,1],[-1,-1,1]]

		for i in(0..2)
			for j in(0..2)
		 		@mensaje += @tablero[i][j].to_s
			end
			@mensaje +=">>"
		end
		#[1,1,0],[-1,1,1],[-1,-1,1]

    erb:index
		
end

post '/index' do
	@resultado =params["3"]
	if @resultado.eql?("3")
		@resultado = "bomba"
		@bomba = "background: url(../img/bomba.jpg) no-repeat;"
	end  
	erb:index
end
