class Game
  attr_reader :secret

  def initialize(secret)
    @secret = secret
  end

  def greeting
    puts "Welcome to MASTERMIND!
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    response = gets.chomp
    if response == 'p' || response == 'P'
      puts 'This is a placeholder'
    elsif response == 'i' || response == 'I'
      puts 'here are the instructions'
    elsif response == 'q' || response == 'Q'
      puts greeting
    else
      puts 'Please select one of the options above'
      puts greeting
    end
  end
end

game = Game.new(['R', 'R', 'R', 'R'])
game.greeting
