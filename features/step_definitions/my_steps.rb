Dado(/^Que voy a la portada$/) do
  visit "/"
end

Entonces(/^veo "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Cuando(/^doy clic al boton bomba$/) do
  click_button("3")
end

Entonces(/^encuentro que existe una bomba$/) do
  last_response.body.should =~ /#{"-1"}/m
end


Entonces(/^encuentro una celda con valor numerico$/) do
  last_response.body.should =~ /#{"btn_PresionadoConValor"}/m
end


Entonces(/^encuentro una celda con valor vacio$/) do
  last_response.body.should =~ /#{"btn_PresionadoVacio"}/m
end




