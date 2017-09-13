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
    if players[:a]
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    if @players[:a].finished?
      return @players[:a]
    elsif @players[:b].finished?
      return @players[:b]
    else
      return nil
    end
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    player.roll
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def display_board
    @players.each do |player|
      player_track = []
      @length.times do
        player_track << "| |"
      end
      puts player_track
    end
  end

  # def board_visualization

  # end

end

p rubyracer = RubyRacer.new(2, 6, 30)
p rubyracer.display_board
