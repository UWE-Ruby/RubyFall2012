Gangway /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new
end

Blimey /^I say '(.*)'$/ do |phrase|
  @translator.say phrase
end

Blimey /^I hit translate$/ do
  @result = @translator.translate
end

Letgoandhaul /^it prints out '(.*)'$/ do |phrase|
	@result.should match /#{phrase}/
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @result.should match /Shiber Me Timbers You Scurvey Dogs!!/
end