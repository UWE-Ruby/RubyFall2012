Gangway /^I have a PirateTranslator$/ do 
	PirateTranslator.is_a?(Class).should eq true
end

Blimey /^I say 'Hello Friend'$/ do
	@piratetranslator = PirateTranslator.new("Hello Friend")
end

Blimey /^I hit translate$/ do
	@pirate = @piratetranslator.translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
	@pirate[0].should eq "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
	@pirate[1].should eq 'Shiber Me Timbers You Scurvey Dogs!!'
end