require 'sinatra'

get '/' do
	@bomba ="none"
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
