require './lib/game'
require './lib/secrets'
require './lib/sequences'
require './lib/guess'

game = Game.new
sequences = Sequences.new

game.greeting
sequences.play
