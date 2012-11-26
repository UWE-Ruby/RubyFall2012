require  "#{File.expand_path(File.dirname(__FILE__))}/../../lib/pirate_translator.rb"

Given /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new
end

When /^I say 'Hello Friend'$/ do
  @translator.say "Hello Friend"
end

When /^I hit translate$/ do
  @pirate_talk = @translator.translate
end

Then /^it prints out 'Ahoy Matey'$/ do
  @pirate_talk.should =~ /Ahoy Matey/
end

Then /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @pirate_talk.should =~ /Shiber Me Timbers You Scurvey Dogs!!/
end