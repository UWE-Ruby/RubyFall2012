
Gangway /^I have a PirateTranslator$/ do
	@parrot = Pirate.new
end

Blimey /^I say 'Hello Friend'$/ do
  @parrot.say("Hello Friend").should == "Hello Friend"
end

Blimey /^I hit translate$/ do
  @parrot.translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
	@parrot.say_result.should == "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
    @parrot.end_convo.should == 'Shiber Me Timbers You Scurvey Dogs!!'
end
