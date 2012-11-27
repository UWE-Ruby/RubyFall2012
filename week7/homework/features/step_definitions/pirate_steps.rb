Gangway /^I have a PirateTranslator$/ do
  @pirate = Pirate.new
end

Blimey /^I say 'Hello Friend'$/ do
  @pirate.phrase=('Hello Friend')
end

Blimey /^I hit translate$/ do
  @pirate.translate()
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @translation = @pirate.translate
  @translation.split("\n")[0].should eq('Ahoy Matey')
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @translation.split("\n")[1].should eq "Shiber Me Timbers You Scurvey Dogs!!"
end