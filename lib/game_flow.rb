class Game_Flow

  def initialize(game_flow)
    @game_flow      = game_flow
  end

  def play(user_input = gets.chomp)
  Secret.generate_code
    p 'I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
    p "What's your guess?"
      user_input
  end

  def instructions
  end

  def cheat
    #return secret.
  end

  def quit
  end
end
