class Game
  attr_reader :secret

  def initialize(secret)
    @secret = secret
  end

  def greeting
    puts "Welcome to MASTERMIND!
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    response = gets.chomp.upcase
    if response == 'P'
      game_flow.play
    elsif response == 'I'
      game_flow.instructions
    elsif response == 'Q'
      puts greeting
    else puts 'Please select one of the options above'
      puts greeting

    end
  end

  def attempts
  end

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

game = Game.new(['R', 'R', 'R', 'R'])
game.greeting
