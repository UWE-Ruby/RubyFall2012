current_dir = File.expand_path(File.dirname(__FILE__))
require "#{current_dir}/lib/tic_tac_toe.rb"

@game = TicTacToe.new

puts "What's your name player?"

name = gets.chomp
@game.player = name

puts @game.welcome_player

until @game.over?
	case @game.current_player.name
	when "Computer"
		@game.computer_move
	when @game.player
		@game.indicate_player_turn
		@game.player_move
  else
    raise "It's nobody's move!"
	end
	puts @game.current_state
	@game.determine_winner
end

puts "You Won!" if @game.player_won?
puts "I Won!" if @game.computer_won?
puts "DRAW!" if @game.draw?
