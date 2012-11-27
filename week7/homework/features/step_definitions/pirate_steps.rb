Gangway /^I have a PirateTranslator$/ do
  @trans = PirateTranslator.new
end

Blimey /^I say 'Hello Friend'$/ do
  @trans.say 'Hello Friend'
end

Blimey /^I hit (\w+)$/ do |arg1|
  @piratey = @trans.send(arg1)
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @piratey.should =~ /Ahoy Matey/
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
	@piratey.should =~ /Shiber Me Timbers You Scurvey Dogs!!/
end
