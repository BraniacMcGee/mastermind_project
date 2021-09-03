class Sequences

  def play
    p 'I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
    p "What's your guess?"

    guess_1 = gets.chomp.split('')
    if guess_1 = secret_1[0] && secret_1[2]
      p "You have two correct colors in the correct position. What is your next guess?"
    elsif guess_1 = secret_1('R') && secret_1('Y')
      p "You have two correct colors, but in the incorrect position. What is your next guess?"




    if gets.chomp == 'q' || 'Q'
      puts game.greeting
    end
  end

  def instructions
  end

end
