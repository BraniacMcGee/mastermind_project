class Game
  attr_reader :secret

  def initialize(secret)
    @secret = secret
  end

  def welcome
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"

    response = gets.chomp
    if response == 'p'
      puts 'This is a placeholder'
    elsif response == 'i'
      puts 'here are the instructions'
    elsif response == 'q'
      puts welcome
    end
  end
end
