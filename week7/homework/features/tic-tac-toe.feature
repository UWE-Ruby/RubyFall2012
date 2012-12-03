# encoding: utf-8
Feature: Tic-Tac-Toe Game
	As a game player I like tic-tac-toe
	In order to up my skills 
	I would like to play agaist the computer

Scenario: Begin Game
	Given I start a new Tic-Tac-Toe game
	When I enter my name Renee
	Then the computer welcomes me to the game with "Welcome Renee"
		And randomly chooses who goes first
		And who is X and who is O
		
Scenario: My Turn
	Given I have a started Tic-Tac-Toe game
		And it is my turn
		And the computer knows my name is Renee
	Then the computer prints "Renee's Move:"
		And waits for my input of "B2"
