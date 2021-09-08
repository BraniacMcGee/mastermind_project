require './lib/sequences'
require './lib/secrets'
require './lib/guess'

class Game
  attr_reader :secret,
              :play

  def initialize
    @secret = Secret.new
    @sequence = Sequences.new(@secret)
  end

  def greeting
    puts "Welcome to MASTERMIND!
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    response = gets.chomp.upcase
    if response == 'P'
      @sequence.play
    elsif response == 'I'
      @sequence.instructions
      p greeting
    elsif response == 'Q'
      puts 'Goodbye'
      @sequence.quit
    else puts 'Please select one of the options above'
      puts greeting
    end
  end
end
