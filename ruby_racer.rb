class RubyRacer
  attr_reader :players, :die, :length, :player_place

  def initialize(players, die, length = 30)
    @players = players
    @die = die
    @length = length
    @player_place = [0, 0]
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    if @player_place[0] >= length || @player_place[1] >= length
      return true
    else
      return false
    end
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    if @player_place[0] >= length
      #puts "Player A wins!"
      return @players[0]
    elsif @player_place[1] >= length
      # puts "Player B wins!"
      return @players[1]
    else
      return nil
    end
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    @player_place[@players.index(player)] += @die.roll
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
    player_a_place = @player_place[0] * 2
    player_b_place = @player_place[1] * 2
   
    lane1 = " "
    lane1 << " |" * (@length)
    lane1[player_a_place..player_a_place+1] = "|a"
    lane1 << "                "
    
    lane2 = " "
    lane2 << " |" * (@length)
    lane2[player_b_place..player_b_place+1] = "|b"
    lane2 << "                "
    
    return lane1, lane2
  end
end
