Gangway /^I have a PirateTranslator$/ do
  @trans = PirateTranslator.new
end

Blimey /^I say '(.*)'$/ do |arg|
  @trans.say arg
end

Blimey /^I hit (\w+)$/ do |arg1|
  @piratey = @trans.send(arg1)
end

Letgoandhaul /^it prints out '(.*)'$/ do |arg|
  @piratey.include? arg
end

Letgoandhaul /^it also prints '(.*)'$/ do |arg|
	@piratey.include? arg
end
