Given /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new
end

When /^I say 'Hello Friend'$/ do
  @translator.phrase = "Hello Friend"
end

When /^I hit translate$/ do
  @result = @translator.translate
end

Then /^it prints out 'Ahoy Matey'$/ do
  @result
end

Then /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @result
end