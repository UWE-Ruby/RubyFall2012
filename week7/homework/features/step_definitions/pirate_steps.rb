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