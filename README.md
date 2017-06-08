# Ruby Racer: Outrageous Fortune

## Summary
![ruby race example gif](readme-assets/ruby-racer-example.gif)  
*Figure 1*.  A game of *Ruby Racer*.


Vroom vroom! We're going to build a simple game called *Ruby Racer*. This is a game in the same sense that [Chutes and Ladders](http://en.wikipedia.org/wiki/Snakes_and_Ladders) is a game: roll the die and move forward.  There's no strategy or decision making, just hope for big rolls.

The game is a race between two players.  Both players start at the beginning of the track, side-by-side.  Players take turns rolling a die and advancing along the track until one of them reaches the end of the track and wins the game.  (See Figure 1.)

Some challenges in building our game will be (1) determining appropriate data structures, (2) managing the state of the game (e.g., keeping track of player positions), and (3) transforming data from one structure to another (e.g. transforming the game data into a printable board).


### Code Base
In this challenge, we're going to begin with some provided code.  We have some fully functional code.  We have a `die_roll` method that simulates rolling a die and then a few methods that will help us update the screen to simulate players moving down the track.

We also have the driver code in `runner.rb`.  This code provides a basic outline for running a game of Ruby Racer.  It calls some methods, which we'll need to write.  For each of these methods, an empty method definition and comments about what it should do are provided in `ruby_racer.rb`.

As we read through the code in `runner.rb`, pay attention to the style, what methods exist, what their inputs and return values are, and how they segment the actions necessary to play the game.


## Releases
### Release 0: Complete the Game
Attention, race fans:  it's time for *Ruby Racer*!  We need to create a working version of the game.  This will involve filling out the empty method definitions in `ruby_racer.rb`.

There is an empty method definition for each method called in `runner.rb`, but that doesn't mean those are all the methods we should have.  Remember, we want to write methods that do one thing.

Also, let's remember to test our code.  While the behaviors of the methods called in the runner file are described in comments, they are not documented in our test suite.  We do not need to test the code in `runner.rb` or any of the provided methods (e.g., `reset_screen`).

*Note:* Do not edit `runner.rb`.


### Release 1:  Add Features *(optional)*
What would make this game more fun?  Now that the basic version of the game is working, let's see if we can't spice it up a little bit.  Below are some suggestions, but we're free to add our own features as well.

- Why limit the game to two players always labeled `a` and `b`?  Let's allow any number of players to sign up for a race and select their own symbols.
- Instead of using single-letter symbols for each player, we could use ASCII art ([vehicle examples](https://sites.google.com/site/asciisandbox/art/vehicles), [convert words](https://github.com/miketierney/artii)).
- We could make the game more like Chutes and Ladders, providing power-ups to move a player forward or power-downs to slow them or move them backward.
- We could make the game less random, giving players more control over how they move across the board.

*Note:*  If we need to, we can edit `runner.rb` in this release.


## Conclusion
How were we able to keep track of the state of our game?  What data structures did we choose to represent data?  Did our choices make it easy to access and update our data?

Did we encounter any edge cases or unexpected situations?  For example, a player advancing past the edge of the board?  Multiple winners (i.e., the game not stopping the first time a player finishes)?  How did we handle these situations?  Did our code remain readable?
