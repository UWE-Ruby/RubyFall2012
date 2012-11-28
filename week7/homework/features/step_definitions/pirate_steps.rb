#Given /^I say (\hello friend\i)$/ do |arg1|

#        @pirate = Pirate.new(arg1)

#end


#When /^I hit (\w+)$/ do |arg1|

#        @result = @pirate.send(arg1)

#end


#Then /^Let go and haul it prints out (\Ahoy Matey\)(\Shiber Me Timbers You Scurvey Dogs!!\)$/ do |arg1, arg2|

#        @result.should == "#{arg1} #{arg2}"
#end
Gangway /^I have a PirateTranslator$/ do
  @pirate = Pirate.new('Hello Friend') # express the regexp above with the code you wish you had
end

Blimey /^I say 'Hello Friend'$/ do
  @pirate# express the regexp above with the code you wish you had
end

Blimey /^I hit translate$/ do
  @pirate.translate("Hello Friend") # express the regexp above with the code you wish you had
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  pending # express the regexp above with the code you wish you had
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  pending # express the regexp above with the code you wish you had
end

