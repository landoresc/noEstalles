require 'sinatra'
require './lib/noEstalles.rb'

get '/' do
@resultado=""
 erb:index
end

get '/index' do
	
	@partida = NoEstalles.new
	@tableroHTML = @partida.getTablero
	
	@resultado =params["3"]
	if @resultado.eql?("3")
		@resultado = "bomba"
		@bomba = "background: url(../img/bomba.jpg) no-repeat;"
	end  
	erb:index
end

get '/resultado/:puntaje' do
 	@puntaje = params["puntaje"]
	erb:resultado
end
