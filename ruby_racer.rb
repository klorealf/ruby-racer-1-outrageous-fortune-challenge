# Returns a data structure that holds data about the race:
# the players, their positions, the track length, etc.
def build_race(players)
end


# Accepts the object returned by build_race as an argument.
# Returns the current state of the game as a string
# that can be printed on the command line.
# The tracks should have the same dimensions each time.
def render(race)
end


# Accepts the object returned by build_race as an argument.
# Returns true if a player has won the race and false otherwise.
def finished?(race)
end


# Accepts the object returned by build_race as an argument.
# Advances each player according to a die roll.
def advance_players(race)
end


# Accepts the object returned by build_race as an argument.
# Returns the winner if there is one, nil otherwise
def winner(race)
end


# Returns a random number between the min and max, inclusive
def die_roll(min = 1, max = 6)
  rand(min..max)
end


# The following methods will help us
# to update the screen when printing the board.
# We don't need to test these methods.
def reset_screen
  clear_screen
  move_to_home
end

# Clears the content on the terminal.
def clear_screen
  print "\e[2J"
end

# Moves the insert point in the terminal to the upper left.
def move_to_home
  print "\e[H"
end