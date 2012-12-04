<<<<<<< HEAD
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
=======
Gangway /^I have a (\w+)$/ do |arg|
	@translator = Kernel.const_get(arg).new
end

Blimey /^I (\w+) '(.+)'$/ do |method, arg|
	@translator.send(method, arg)
end

Letgoandhaul /^I hit (\w+)$/ do |arg|
	@result = @translator.send(arg)
end

Letgoandhaul /^it prints out '(.+)'$/ do |arg|
	@result.split("\n ").first.should == arg
end

Letgoandhaul /^it also prints '(.+)'$/ do |arg|
	@result.split("\n ").last.should == arg
>>>>>>> 4b2958513d06a8a3cac07f3785ec431b77644ba7
end
