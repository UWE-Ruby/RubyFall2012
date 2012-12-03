require 'pry'

class Player

  attr_accessor :name, :symbol

end


class TicTacToe

  SYMBOLS = [:X, :O]

  attr_accessor :board

  def initialize(first_player = nil, player_symbol = nil)
    @computer_player = Player.new
    @computer_player.name = "Computer"

    @human_player = Player.new

    @players = {:player => @human_player, :computer => @computer_player}

    # player_order is an array like [:player, :computer]
    if first_player
      @player_order = []
      player_names = @players.keys

      @player_order << player_names.delete(first_player)
      @player_order << player_names[0]
    else
      @player_order = @players.keys.shuffle
    end

    symbols = SYMBOLS.dup.shuffle

    if player_symbol
      @players[:player].symbol = symbols.delete(player_symbol )
    end

    @players.values.select { |player| !player.symbol }.each_with_index do |player, index|
      player.symbol = symbols[index]
    end

    @current_player_index = 0

    @board = {
      :A1 => nil, :A2 => nil, :A3 => nil,
      :B1 => nil, :B2 => nil, :B3 => nil,
      :C1 => nil, :C2 => nil, :C3 => nil
    }
  end

  def player=(name)
    @human_player.name = name
  end

  def player
    @human_player.name
  end

  def player_symbol
    @human_player.symbol
  end

  def computer_symbol
    @computer_player.symbol
  end

  def welcome_player 
    "Welcome #{@human_player.name}"
  end

  def current_player
    key = @player_order[@current_player_index]
    @players[key]
  end

  def indicate_player_turn
    puts "#{@human_player.name}'s Move:"
  end

  def get_player_move
    gets.chomp
  end

  def open_spots
    @board.keys.select { |key| @board[key] == nil }
  end

  def open?(position)
    open_spots.include?(position)
  end

  def taken?(position)
    !open?(position)
  end

  def computer_move
    position = open_spots.shuffle.first # :A2

    @board[position] = computer_symbol

    position
  end

  def player_move
    position = nil
    
    begin
      if position
        puts "That spot is taken, please choose another:"
      else
        puts "It's your turn, please make a move:"
      end

      position = get_player_move.to_sym
    end until open?(position)

    @board[position] = player_symbol

    position
  end

  def current_state
<<-BOARD
    A   B   C
  -------------
1 | #{@board[:A1]}  | #{@board[:B1]}  | #{@board[:C1]} |
  -------------
2 | #{@board[:A2]}  | #{@board[:B2]}  | #{@board[:C2]} |
  -------------
3 | #{@board[:A3]}  | #{@board[:B3]}  | #{@board[:C3]} |
  -------------

BOARD
  end
end