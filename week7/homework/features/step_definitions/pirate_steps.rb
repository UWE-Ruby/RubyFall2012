
Gangway /^I have a PirateTranslator$/ do
   @t = PirateTranslator.new('Hello Friend')
end

Blimey /^I say 'Hello Friend'$/ do
	@talk
end

Blimey /^I hit translate$/ do 
  @translate
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
	@translate = "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @translate = "Shiber Me Timbers You Scurvey Dogs!!"


#renee's
#Gangway /^I have a (\w+)$/ do |arg|
#	@translator = Kernel.const_get(arg).new
#end

#Blimey /^I (\w+) '(.+)'$/ do |method, arg|
#	@translator.send(method, arg)
#end

#Letgoandhaul /^I hit (\w+)$/ do |arg|
#	@result = @translator.send(arg)
#end

#Letgoandhaul /^it prints out '(.+)'$/ do |arg|
#	@result.split("\n ").first.should == arg
end

#Letgoandhaul /^it also prints '(.+)'$/ do |arg|
#	@result.split("\n ").last.should == arg
#end
