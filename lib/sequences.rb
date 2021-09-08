require './lib/guess'
require './lib/secrets'
require './lib/game'

class Sequences

  def initialize(secret)
    @guess = Guess.new(secret)
    @secret = secret
  end

  def play
    @secret.generate_code
    p 'I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game or use (c)heat at any time to see the secret code'
    p "What's your guess?"
    start = Time.now
    @guess.gets_input
    cheat
    quit
    count = 1
    @guess.error_message
    until @guess.has_won? do
      @guess.guess_output
      p 'Enter your next guess.'
      @guess.gets_input
      @guess.error_message
      cheat
      quit
      count += 1
    end
    finish = Time.now
    difference = finish - start
    seconds = difference % 60
    minutes = (difference/60) % 60
    p "Congratulations! You guessed the sequence #{@secret.generated_code.join} in #{count} guesses over #{minutes.round} minutes and #{seconds.round} seconds. Do you want to (p)lay again or (q)uit?"
    @guess.gets_input
    if @guess.guess == 'P'
      play
    elsif @guess.guess == 'Q'
      quit
    end
  end

  def instructions
    p 'A code has been generated at random. The code is made up of the colors (r)ed, (g)reen, (b)lue, and (y)ellow in no specific order. Enter your guess and use the hints provided to crack the code in as little guesses as possible!'
  end

  def cheat
    if @guess.guess == 'C' || @guess.guess == 'c'
    p "The secret code is #{@secret.generated_code.join}."
    end
  end

  def quit
    if @guess.guess == 'Q'
      p 'Goodbye'
      exit
    end
  end
end
