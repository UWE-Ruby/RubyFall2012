Feature: Converting metric
	In order to pack for London
	As a traveler
	I want to be told the Celsius temperature in Fahrenheit

Scenario:
	Given I have entered 0 into the converter
	And I select Celsius
	When I press convert
	Then the result should be 32 on the screen
	
