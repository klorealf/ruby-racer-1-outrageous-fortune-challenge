class RubyRacer
  attr_reader :players, :die, :length

  def initialize(players, die, length = 30)
    @players = players
    @die = die
    @length = length
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    if @players[:a] >= 30 && @players[:b] >= 30
      true
    else
      false
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    if @players[:a] >= 30
      return :a
    elsif @players[:b] >= 30
      return :b
    else
      nil  
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    player = Array.new
    
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
  end
end
