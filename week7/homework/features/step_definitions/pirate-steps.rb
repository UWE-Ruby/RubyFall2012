Gangway /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new()
end

Blimey /^I say 'Hello Friend'$/ do
  @translator.blimey
end

Blimey /^I hit translate$/ do
  @translator.letgoandhaul
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @translator.letgoandhaul
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @translator.letgoandhaul
end