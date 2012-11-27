require './features/step_definitions/tic-tac-toe.rb'

@game = TicTacToe.new

puts "What's your name?"
@game.player = gets

puts @game.welcome_player
count = 0

until @game.over? or count >= 10
	case @game.current_player
	when "Computer"
		@game.computer_move
	when @game.player
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
