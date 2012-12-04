require 'pry'

class Player
  attr_accessor :name, :symbol, :winner
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

    # Randomize the symbol order
    symbols = SYMBOLS.dup.shuffle

    if player_symbol
      @players[:player].symbol = symbols.delete(player_symbol)
    end

    # Iterate over all the players that don't yet have symbols, and assign them one
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

  def player_for_symbol(symbol)
    @players.values.find { |player| player.symbol == symbol }
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

  def advance_player
    @current_player_index = (@current_player_index + 1) % 2
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

    puts "Computer's Move:"

    position = open_spots.shuffle.first # :A2

    puts position

    @board[position] = computer_symbol

    advance_player

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

    advance_player

    position
  end

  def determine_winner
    win_scenarios = [
      %w[A1 A2 A3],
      %w[B1 B2 B3],
      %w[C1 C2 C3],
      %w[A1 B1 C1],
      %w[A2 B2 C2],
      %w[A3 B3 C3],
      %w[A3 B2 C1],
      %w[A1 B2 C3]
    ].map { |array| array.map(&:to_sym) }

    # Find the winning scenenario
    win = win_scenarios.find do |scenario|
      board_state = scenario.map { |c| @board[c] }

      board_state.all? { |i| i == :O } || board_state.all? { |i| i == :X }
    end

    # Figure out which player won
    if win
      # [:B1, :B2, :B3]
      winning_symbol = @board[win.first]
      winning_player = player_for_symbol(winning_symbol)
      winning_player.winner = true
      @winner = winning_player
    end

  end

  def player_won?
    @human_player.winner
  end

  def computer_won?
    @computer_player.winner
  end

  def spots_open?
    open_spots.any?
  end

  def over?
    @winner || !spots_open? 
  end

  def draw?
    over? && !@winner
  end

  def current_state
<<-BOARD
    A   B   C
  -------------
1 | #{present_board_at(:A1)} | #{present_board_at(:B1)} | #{present_board_at(:C1)} |
  -------------
2 | #{present_board_at(:A2)} | #{present_board_at(:B2)} | #{present_board_at(:C2)} |
  -------------
3 | #{present_board_at(:A3)} | #{present_board_at(:B3)} | #{present_board_at(:C3)} |
  -------------

BOARD
  end

  def present_board_at(slot)
    @board[slot] || " "
  end
end