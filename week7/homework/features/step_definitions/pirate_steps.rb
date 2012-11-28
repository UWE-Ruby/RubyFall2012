# encoding: utf-8

Gangway /^I have a PirateTranslator\t\t\t\t\t\t\t\t\t\#Given$/ do
  @translator = PirateTranslator.new
end
Blimey /^I say 'Hello Friend'\t\t\t\t\t\t\t\t\t\t\t\#When$/ do
  pending # express the regexp above with the code you wish you had
end

Blimey /^I hit translate  \t\t\t\t\t\t\t\t\t\t\t\#And$/ do
  pending # express the regexp above with the code you wish you had
end

Letgoandhaul /^it prints out 'Ahoy Matey'\t\t\t\t\t\t\t\#Then$/ do
  pending # express the regexp above with the code you wish you had
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'\t\#But$/ do
  pending # express the regexp above with the code you wish you had
end
# Mine:
# Gangway /^I have a PirateTranslator$/ do 
  # @translator = PirateTranslator.new
# end
# Blimey /^I say 'Hello Friend'$/ do #When
  # pending # express the regexp above with the code you wish you had
# end
# Blimey /^I hit (\w+)$/ do |arg1| #When
  # @result = @translator.send(arg1)
# end
# Letgoandhaul /^it prints out 'Ahoy Matey'$/ do #Then
    # pending # express the regexp above with the code you wish you had
# end
# #
# Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do #Then
    # pending # express the regexp above with the code you wish you had
# end
