Gangway /^I have a PirateTranslator$/ do
   @t = PirateTranslator.new('Hello Friend')
end

Blimey /^I say 'Hello Friend'$/ do
	@talk
end

Blimey /^I hit translate$/ do 
  @translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
	@translate = "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @translate = "Shiber Me Timbers You Scurvey Dogs!!"
end
