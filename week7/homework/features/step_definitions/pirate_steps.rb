# class answers

Gangway /^I have a PirateTranslator$/ do
	@parrot = Pirate.new
end

Blimey /^I say 'Hello Friend'$/ do
  @parrot.say("Hello Friend").should == "Hello Friend"
end

Blimey /^I hit translate$/ do
  @parrot.translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
	@parrot.say_result.should == "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
    @parrot.end_convo.should == 'Shiber Me Timbers You Scurvey Dogs!!'
#mine
end
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
end
