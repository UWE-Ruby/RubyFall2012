Feature: converting to American
		WHile in London
		In order to chat in the pub
		I need to convert dumb American weather to Celcius


Scenario: 
	Given I have entered 85 into the converter
	And I select Farenheit
	When I press convert
	Then the result should be 29.4 on the screen

	Scenario: 
	Given I have entered 35 into the converter
	And I select Farenheit
	When I press convert
	Then the result should be 1.7 on the screen