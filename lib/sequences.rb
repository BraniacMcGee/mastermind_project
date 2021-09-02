class Sequences

  def play
    p 'I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
    p "What's your guess?"

    gets.chomp.split('')

    if gets.chomp == 'q' || 'Q'
      puts game.greeting
    end
  end

  def instructions
  end

end
