require_relative 'die'
require 'pry'

class RubyRacer
  attr_reader :players, :die, :length

  def initialize(players, die, length = 30)
    @players = player_hash(players)
    @die = die
    @length = length
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    if @players[:a] >= 30
    return true
    end
    if @players[:b] >= 30
    return true
    end
    false
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    if @players[:a] >= 30 && @players[:b] >= 30
      nil
    elsif @players[:b] >= 30
     return "b"
    elsif @players[:a] >= 30
     return "a"
  end
  end

  def player_hash(player_array)
   h = Hash.new
   player_array.each {|x|  h[x] = 0 }
   player_array = h

  end
  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    players[player[0]] += @die.roll
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization

  end
end
