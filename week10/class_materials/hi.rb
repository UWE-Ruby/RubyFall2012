require 'sinatra'

get '/hi' do
	"<font color='pink'>Hello World!</font>"+
	"<br/><a href='/'>Go Back</a>"
end

get '/' do 
	"<font color='green'>Ren&eacute;e</font> is the coolest teacher ever!"+
	"<br/><a href='/hi'>Click Here</a>"
end

get '/yousuck' do
  stream do |out|
    out << "fail\n"
    sleep 0.5
    out << "\nsauce"
    sleep 1
  end
end