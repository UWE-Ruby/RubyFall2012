# encoding: utf-8
class TicTacToe
  
SYMBOLS = [:X, :O]


attr_accessor :player, :X, :O

       def initialize(player = :player)
         @new_game = true
         @player = player
         #owe the new game trick to kris-luminar
         if player == "Renee" then current_player(Renee) end
         
       end
         
        def player(*player)
  
         #@player = player
        i = puts "what is your name?"
        player = gets.chomp
        end



        def welcome_player

        "Welcome #{@player}"
        end

      def current_player(*player)
    #    if @new_game == true
        players = [player, "Computer"]
        first = players.sample
          if first = player then second = "Computer" else second = player
            end
     #   end

      end

      def player_symbol
        :X
      end
      
      def computer_symbol
        :O
      end

      #def indicate_palyer_turn
     #end
      
      #def get_player_move
      #end
      
      #def open_spots
      #end
      
      #def computer_move
      #end
      
      #def current_state
      #end
      
      # def spots_open?
      #end
      
      # def spots_open?
      #end
      
      #def player_won?
      #end
      
      #def computer_won?
      #end
      
      #def draw?
      #end
      

@board = {

      A1: " ", A2: " ", A3: " ",

      B1: " ", B2: " ", B3: " ",

      C1: " ", C2: " ", C3: " "

  }

end
