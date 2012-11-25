Gangway /^I have a PirateTranslator$/ do
  @pirate = Pirate.new
end

Blimey /^I say 'Hello Friend'$/ do
  @pirate.phrase('Hello Friend')
end

Blimey /^I hit translate$/ do
  @result = @pirate.translate
  @additionalPhrase = @pirate.additionalPhrase
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @result.should eq "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @additionalPhrase.should eq ('Shiber Me Timbers You Scurvey Dogs!!')
end
