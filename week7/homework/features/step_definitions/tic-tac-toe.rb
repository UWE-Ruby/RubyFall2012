module Symbols
	SYMBOLS = [:X , :O] 
end

class TicTacToe
	include Symbols

	attr_accessor = :player

 def initialize(*args_in)
 	@board = {
      :A1 => :X, :A2 => :X, :A3 => "",
      :B1 => "", :B2 => "", :B3 => :X,
      :C1 => "", :C2 => "", :C3 => ""
    }
 	@player = {:computer =>"Computer",:player => ""}

 	puts "What is your name"
 	@player[:player] = gets.chop
 	welcome_player
 	
 	#puts " #{args_in}"

 	if args_in[0] == :player
 		@current_player = @player[:player]
 	elsif args_in[0] == :computer
 		@current_player = @player[:computer]
 	end

 end 

 def welcome_player
 	puts "Welcome #{@player[:player]}"
 end


 def current_player
 	puts "current is: #{@current_player}"
 	@current_player
 end

 def player=(name)
 	@player[:player] = name
 	@current_player = @player[:player]
 end

 def player
 	rand = Random.new
 	num = rand(max=2)
 	puts "num: #{num}"
 	
 	if num == 1
 	 @current_player = @player[:player]
	else 
 	 @current_player = @player[:computer]
 	end
 end

 def player_symbol
 	SYMBOLS[1]
 end

 def computer_symbol
	SYMBOLS[0]
 end

 def indicate_player_turn
 	"#{@current_player}'s' Move"
 end

 def get_player_move
 	players_move = gets
 	#puts "move: #{players_move} current: #{@current_player}"
 	if @current_player != @player[:computer]
 		@current_player = @player[:computer]
 	end
 	player_move
 end

 def player_move
 end

 def determine_winner
 	xs = []
 	@board.select {|k,v| if v == :X; puts "k= #{k} v= #{v}" end}
 	xs = @board.sort
	puts "xs: #{xs}"
	#player_won = FALSE
 end

 def open_spots
 	opens = {}
 	opens = @board.select{|k,v| if v == ""; opens.store(k,v) end}
 	puts "open spots are: #{opens}"
 	computer_move(opens)

 end

 def computer_move(opens)

 	rand = Random.new
 	num = rand(max=3)
 	if num == 1
 		letter = "A"
 	elsif num == 2
 		letter = "B"
 	else num = 3 
 		letter = "C"
 	end

	opens.fetch(":#{letter}#{num}", "#{letter}#{num} sorry, not open")

 end


end