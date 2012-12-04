require './features/step_definitions/tic-tac-toe.rb'

@game = TicTacToe.new
puts @game.welcome_player

until @game.over?
	puts "Player is #{@game.player}"
	puts @game.current_player
	case @game.current_player
	when "Computer"
		puts "Computer is moving"
		@game.computer_move
	when @game.player
		puts "player is moving"
		@game.indicate_player_turn
		@game.player_move
	end
	puts @game.current_state
	@game.determine_winner
end

puts "You Won!" if @game.player_won?
puts "I Won!" if @game.computer_won?
puts "DRAW!" if @game.draw?
