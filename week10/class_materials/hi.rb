require 'sinatra'
require "sinatra/reloader"

get '/hi' do
	"<font color='pink'>Hello World!</font>"+
	"<br/><a href='/'>Go Back</a>"
end

get '/' do 
	"<font color='green'>Ren&eacute;e</font> is the coolest teacher ever!"+
	"<br/><a href='/hi'>Click Here</a>"+
	"<br><a href='/bold-text'>click here for red text</a>"
end

get '/bold-text' do
	"<font color='Red'><b>Red Bold Text</b></font>"+
	"<br/><a href='/'>Go Back</a>"
end
