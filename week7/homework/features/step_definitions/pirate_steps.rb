Gangway /^I have a PirateTranslator$/ do
  @pirate = Pirate.new
end

Blimey /^I say (.*)$/ do |arg1|
  @pirate.phrase = arg1
end

Blimey /^I hit translate$/ do
  @pirate.should_receive(:gets)
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @pirate.translate
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @pirate.insult
end
