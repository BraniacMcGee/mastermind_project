require './sequences'
require './secrets'
require './guess'

class Game
  attr_reader :secret,
              :play

  def initialize
    @secret = Secret.new
    @sequence = Sequences.new
  end

  def greeting
    puts "Welcome to MASTERMIND!
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    response = gets.chomp.upcase
    if response == 'P'
      Sequences.play
    elsif response == 'I'
      Sequences.instructions
    elsif response == 'Q'
      puts greeting
    else puts 'Please select one of the options above'
      puts greeting
    end
  end

  game = Game.new
  game.greeting

  def guess_counter
    count = 0
    @guess
    count +=1
  end

  def timer
    start = Time.now
    finish = Time.now
    diff = finish - start
  end
end


# game = Game.new
# game.greeting('RRRR')
