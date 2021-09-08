require './lib/guess'
require './lib/secrets'
require './lib/game'

class Sequences

  def initialize(secret)
    @guess = Guess.new(secret)#(gets.chomp)
    @secret = secret
  end

  def play
    @secret.generate_code

    # def cheat
    #   if @guess = 'C'
    #   p @secret.generated_code
    #   end
    # end

    p 'I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.'
    p "What's your guess?"
    start = Time.now
    count = 0
    @guess.gets_input
    count += 1

    @guess.error_message
    until @guess.has_won? do
      @guess.guess_output
      p 'Enter your next guess.'
      @guess.gets_input
      # @guess.cheat
      count += 1
    end

    finish = Time.now
    difference = finish - start
    seconds = difference % 60
    minutes = (difference/60) % 60

    p "Congratulations! You guessed the sequence #{@secret.generated_code.join} in #{count} guesses over #{minutes.round} minutes and #{seconds.round} seconds. Do you want to (p)lay again or (q)uit?"

    #insert quit
    #a loop back to sequences.play
  end

  def instructions
    p 'A code has been generated at random. The code is made up of the colors (r)ed, (g)reen, (b)lue, and (y)ellow in no specific order. Enter your guess and use the hints provided to crack the code in as little guesses as possible!'
  end

  # def cheat
  #   if
  #     p @secret.generated_code
  #   end
  # end
  # def cheat
  #   if @guess.gets_input == 'c' || "C"
  #   p "The secret code is #{@secret.generated_code}."
  #   end
  # end

  def quit
    if gets.chomp.upcase == 'Q'
      puts mastermind.greeting
      exit
    end
  end
end
