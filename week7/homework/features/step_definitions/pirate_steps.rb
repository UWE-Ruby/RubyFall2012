Given /^I have a PirateTranslator$/ do 
  @translator = PirateTranslator.new  
end

When /^I say 'Hello Friend'$/ do  # (\w+)
  @translator.norm_words = "Hello Friend"
end

And /^I hit translate$/ do
  @result = @translator.translate
end

Then /^it prints out 'Ahoy Matey'$/ do
  @translate = "Ahoy Matey"
end

But /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @translate = "Shiber Me Timbers You Scurvey Dogs!!"
end