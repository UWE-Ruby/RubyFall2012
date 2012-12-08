#require 'rubygems'
#require 'crack'
#require 'open-uri'
require 'rest-client'

url='http://www.thestranger.com/seattle/Music' #The url for the web page we want

puts (RestClient.get(url))