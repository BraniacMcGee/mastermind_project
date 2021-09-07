require './lib/guess'
require './lib/secrets'
require './lib/mastermind'

class Sequences

  def play
    Secret.generate_code
    p 'I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
    p "What's your guess?"
    gets.chomp

    until Guess.has_won? do
      Guess.error_message
      Guess.guess_output
    end
  end

  def instructions
    p 'A code has been generated at random. The code is made up of the colors (r)ed, (g)reen, (b)lue, and (y)ellow in no specific order. Enter your guess and use the hints provided to crack the code in as little guesses as possible!'
  end

  def cheat
    p 'Here is the secret code: #{@secret.generate_code}'
  end

  def quit
    if gets.chomp.upcase == 'Q'
      puts mastermind.greeting
    end
  end
end
