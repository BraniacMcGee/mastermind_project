class Game_Flow
  attr_reader :convert

  def initialize(game_flow)
    @game_flow      = game_flow
    @guess        = Guess.new
    @secrets      =Secret.new
  end

  def play(user_input = gets.chomp)
  Secret.generate_code #secret.secret_code
    p 'I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
    p "What's your guess?"
      user_input
  end

  def instructions
    p 'A code has been generated at random. The code is made up of the colors (r)ed, (g)reen, (b)lue, and (y)ellow in no specific order. Enter your guess and use the hints provided to crack the code in as little guesses as possible!'
  end

  def cheat
    #return secret.
  end

  #confirmation statement? Y/N

  def quit
  end
end

#quit might equal