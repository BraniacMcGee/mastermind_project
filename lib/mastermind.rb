class Game
  attr_reader :secret

  def initialize(secret)
    @secret = secret
  end

  def greeting
    puts "Welcome to MASTERMIND!
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    response = gets.chomp
    if response == 'P' || response == 'p'
      sequences.play
    elsif response == 'I' || response ==  'i'
      sequences.instructions
    elsif response == 'Q' || response == 'q'
      puts greeting
    else puts 'Please select one of the options above'
      puts greeting
    end
  end
end

game = Game.new(['R', 'R', 'G', 'Y'])
game.greeting
