Feature: Pirate Speak
      I would like help to talk like a pirate

Scenario: The mighty speaking pirate
      Given I have a PirateTranslator
      When I say 'Hello Friend'
            And I hit translate
      Then it prints out 'Ahoy Matey'
            But it also prints 'Shiber Me Timbers You Scurvey Dogs!!'
