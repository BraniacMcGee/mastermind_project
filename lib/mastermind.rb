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
>>>>>>> 97736fdff249b74f1b2c90145090d17444b55581
    end
  end
end

game = Game.new(['R', 'R', 'R', 'R'])
game.greeting
>>>>>>> 97736fdff249b74f1b2c90145090d17444b55581
