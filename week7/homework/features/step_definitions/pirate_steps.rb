#encoding: utf-8

require "rspec/mocks/standalone"

Given /^I have a PirateTranslator$/ do
	@translator = PirateTranslator.new
end

When /^I say ('Hello Friend')$/ do |words|
	@words_said = words
end

#reminder: Then is interchangeable with And
Then /^I hit translate$/ do
	@translated = @translator.translate(@words_said)
end

Then /^it prints out (.*)$/ do |arg1|
	@translator.should_receive(:puts).with(arg1)
end

Then /^it also prints (.*)$/ do |arg2|
	@translator.should_receive(:puts).with(arg2)
end