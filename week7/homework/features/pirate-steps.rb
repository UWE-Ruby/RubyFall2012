Gangway /^I have a PirateTranslator$/ do
  PirateTranslator.new 'test'
end

Blimey /^I say ('\w+\s\w+')$/ do |arg1|
  @pirate_translator = PirateTranslator.new(arg1)
end

Blimey /^I hit translate$/ do
  @pirate_speak = @pirate_translator.translate
end

Letgoandhaul /^it prints out ('.*')$/ do |arg1|
  @pirate_speak.should eq arg1
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  pending # express the regexp above with the code you wish you had
end
