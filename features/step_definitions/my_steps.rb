Dado(/^Que voy a la portada$/) do
  visit "/"
end

Entonces(/^veo "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

Cuando(/^doy clic al boton bomba$/) do
  click_button("3")
end


Dado(/^la le doy clic al boton (\d+)$/) do |arg1|
  click_button(arg1)
end

Entonces(/^el resultado es bomba$/) do
  last_response.body.should =~ /#{"bomba"}/m
end



