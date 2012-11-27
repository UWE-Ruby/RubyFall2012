require './features/step_definitions/tic-tac-toe.rb'

@game = TicTacToe.new

puts "What's your name?"
@game.player = gets

puts @game.welcome_player
count = 0

until @game.over? or count >= 10
	if @game.current_player == "Computer"
		@game.computer_move
	else
		@game.indicate_player_turn
		@game.player_move
	end
	puts @game.current_state
	@game.determine_winner

	count += 1
end

puts "You Won!" if @game.player_won?
puts "I Won!" if @game.computer_won?
puts "DRAW!" if @game.draw?
