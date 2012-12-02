# encoding: utf-8
# arrange
Gangway /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new
end
Blimey /^I say '(.+)'$/ do |arg1|
	@translator.phrase = arg1 
end
# act
Blimey /^I hit translate$/ do
  @result = @translator.translate 
end
# assert
Letgoandhaul /^it( also)? prints( out)? '(?<arg1>.+)'$/ do |arg1|
  @result.should match arg1
end
# | given (code)   	 | "Gangway"                |
# | when (code)      | "Blimey"                 |
# | then (code)      | "Letgoandhaul"           |
# | and (code)       | "Aye"                    |
# | but (code)       | "Avast"  
# (grouping)
# '(.+)' =  group & capture what's inside the '' (at least one character qualifying the dot (anything))
# (?<name>.+) = as grouping is named it can be referenced non-named groups are not captured :)