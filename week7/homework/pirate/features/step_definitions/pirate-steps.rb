Gangway /^I have a PirateTranslator$/ do
  @piratetranslator = PirateTranslator.new()
end

Blimey /^I say 'Hello Friend'$/ do
  @piratetranslator.say = "Hello Friend"
end

Blimey /^I hit translate$/ do
  @result = @piratetranslator.translate()
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @result.should =~ /Ahoy Matey/
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @result.should =~ /Shiber Me Timbers You Scurvey Dogs!!/
end
