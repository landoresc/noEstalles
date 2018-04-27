require 'sinatra'
require './lib/noEstalles.rb'

get '/' do
 erb:index
end

get '/index' do
	@resultado=""
	@partida = NoEstalles.new
	@tableroHTML = @partida.getTablero

	erb:index
end

get '/resultado/:puntaje' do
 	@puntaje = params["puntaje"]
	erb:resultado
end
