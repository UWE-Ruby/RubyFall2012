Gangway /^I have a PirateTranslator$/ do
  @pirateTranslator = Pirate.new()
end

Blimey /^I say 'Hello Friend'$/ do
  "Hello Friend"
end

Blimey /^I hit translate$/ do
  @translate = @pirateTranslator.translate("Hello Friend")
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @translate.should eq "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @translate = @pirateTranslator.translate("")
  @translate.should eq "Shiber Me Timbers You Scurvey Dogs!!"
end
