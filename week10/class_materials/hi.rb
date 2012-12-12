require 'sinatra'

get '/hi' do
	"<font color='pink'>Hello World!</font>"+
	"<br/><a href='/'>Go Back</a>"
end

get '/' do 
	"<font color='green'>Ren&eacute;e</font> is the coolest teacher ever!"+
	"<br/><a href='/hi'>Click Here</a>"
end
