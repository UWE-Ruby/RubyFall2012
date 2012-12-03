class TicTacToe
	attr_reader :player #get in Java
	SYMBOLS = [:X,:O]
	def initialize(*args)  
      if args.size == 0  
		# TicTacToe with no arg = randomly choose who to start
        @current_player = :computer #either :player or :computer
      else  
		# TicTacToe with 1 arg= whichever player is sent in is to start
        @current_player = args[0]  
      end  
    end   
	def player=(name) #set in Java
	# equal sign means assignment, without means simple method call
		@player=name
	end
	def welcome_player
		return "Welcome " + @player
	end
	def current_player
		# return "Renee" if @current_player is :player, return "Computer" if this is :computer
		if @current_player == :player
			return "Renee"
		else
			return "Computer"
		end
	end
	def player_symbol
		return :X
	end
	def computer_symbol
		return :O
	end
end