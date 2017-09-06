class RubyRacer
  attr_accessor :players, :die, :length, :player_spots

  def initialize(players, die, length = 30)
    @player_spots = [0, 0]
    @length = length
    @players = players
    @die = die
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    if @player_spots[0] >= @length || @player_spots[1] >= @length
      true
    else
      false
    end
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    if @player_spots[0] >= @length
      return @players[0]
    elsif @player_spots[1] >= @length
      return @players[1]
    else
      return nil
    end
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    @player_spots[@players.index(player)] += @die.roll
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
    player1_index = @player_spots[0] * 2
    player2_index = @player_spots[1] * 2
    lane1 = ""
    lane2 = ""
    lane1 << " |" * (@length)
    lane2 << " |" * (@length)
    lane1 << "       finish"
    lane2 << "       finish"
    lane1[player1_index..player1_index+1] = "a|"
    lane2[player2_index..player2_index+1] = "b|"
    return lane1, lane2
  end
end
