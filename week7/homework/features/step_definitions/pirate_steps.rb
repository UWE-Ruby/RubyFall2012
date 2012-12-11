<<<<<<< HEAD
Gangway /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new
end

Blimey /^I say 'Hello Friend'$/ do
  @translator.get_input('Hello Friend')
end

Blimey /^I hit translate$/ do
  @translator.translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @translator.translate.include?('Ahoy Matey')
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @translator.translate.include?('Shiber Me Timbers You Scurvey Dogs!!')
end
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
end
>>>>>>> 49855ef72d67870e69889977eb388f8994bc02f9
