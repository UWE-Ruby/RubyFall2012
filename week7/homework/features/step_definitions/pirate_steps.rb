
Gangway /^I have a PirateTranslator$/ do
  @translator = PirateTranslator.new()
end

Blimey /^I say 'Hello Friend'$/ do
  @translator.translate("Hello Friend")
end

Blimey /^I hit translate$/ do
   @translator.translate("Hello Footy")
end

Letgoandhaul /^it prints out 'Ahoy Matey'$/ do
  @result = "Ahoy Matey"
end

Letgoandhaul /^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/ do
  @result = 'Shiber Me Timbers You Scurvey Dogs!!'
end

#Feature: Pirate Speak
 #     I would like help to talk like a pirate

#Scenario: The mighty speaking pirate
 #     Given I have a PirateTranslator
  #    Then I say 'Hello Friend'
   #         And I hit translate
    #  Then it prints out 'Ahoy Matey'
     #       But it also prints 'Shiber Me Timbers You Scurvey Dogs!!'

 #     | feature          | "Ahoy matey!"            |
 #     | background       | "Yo-ho-ho"               |
  #    | scenario         | "Heave to"               |
   #   | scenario_outline | "Shiver me timbers"      |
    #  | examples         | "Dead men tell no tales" |
     # | given            | "* ", "Gangway! "        |
#      | when             | "* ", "Blimey! "         |
 #     | then             | "* ", "Let go and haul " |
  #    | and              | "* ", "Aye "             |
   #   | but              | "* ", "Avast! "          |
    #  | given (code)     | "Gangway"                |
     # | when (code)      | "Blimey"                 |
#      | then (code)      | "Letgoandhaul"           |
 #     | and (code)       | "Aye"                    |
  #    | but (code)       | "Avast"                  |
