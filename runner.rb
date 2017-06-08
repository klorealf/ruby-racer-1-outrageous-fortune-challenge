require_relative "ruby_racer"


players = [:a, :b]
race = build_race(players)

# Clear the screen and print the board
# with players in their starting positions.
# Then pause, so users can see the starting board.
reset_screen
puts render(race)
sleep(1)

# Run the race.
until finished?(race)
  # Do this each round until the race is finished.

  # Move each player forward.
  advance_players(race)

  # Now that each player has moved,
  # reprint the board with the new player positions
  # and pause so users can see the updated board.
  reset_screen
  puts render(race)
  sleep(0.2)
end

# Once the race is finished, report the winner.
puts "Player '#{winner(race)}' wins!"
