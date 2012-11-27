Gangway /^I have a PirateTranslator$/ do
  PirateTranslator.new 'test'
end

Blimey /^I say '(.*)'$/ do |arg1|
  @pirate_translator = PirateTranslator.new(arg1)
end

Blimey /^I hit translate$/ do
  @pirate_speak = @pirate_translator.translate
end

Letgoandhaul /^it prints out '(.*)'$/ do |arg1|
  (@pirate_speak.include?(arg1)).should be_true
end

Letgoandhaul /^it also prints '(.*)'$/ do |arg1|
  (@pirate_speak.include?(arg1)).should be_true
end
