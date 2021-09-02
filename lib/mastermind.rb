class Game
  attr_reader :secret

  def initialize(secret)
    @secret = secret
  end

  def greeting
    puts "Welcome to MASTERMIND!
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    response = gets.chomp
<<<<<<< HEAD
    if response == 'P' || response == 'p'
      sequences.play
    elsif response == 'I' || response ==  'i'
      sequences.instructions
    elsif response == 'Q' || response == 'q'
      puts greeting
    else puts 'Please select one of the options above'
      puts greeting
=======
    if response == 'p' || response == 'P'
      puts 'This is a placeholder'
    elsif response == 'i' || response == 'I'
      puts 'here are the instructions'
    elsif response == 'q' || response == 'Q'
      puts greeting
    else
      puts 'Please select one of the options above'
>>>>>>> 128ccf51ac7e5c5345ac3183b5cb6befdcb34bd0
    end
  end
end

<<<<<<< HEAD
game = Game.new(['R', 'R', 'G', 'Y'])
game.greeting
=======
return greeting
>>>>>>> 128ccf51ac7e5c5345ac3183b5cb6befdcb34bd0
