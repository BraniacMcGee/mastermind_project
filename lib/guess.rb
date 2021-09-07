class Guess
  attr_reader :secrets,
              :convert,
              :guess_counter,
              :timer,
              :secret_code

  def initialize(guess = gets.chomp)
    @guess = guess
    @secret = Secret.new
  end

  def too_short?
  true == @guess.split('').count < 4
  end

  def too_long?
    true == @guess.split('').count > 4
  end

  def error_message
    if too_long? == true
      p 'Your guess is too long. All guesses must be 4 characters. Please try again.'
    elsif too_short? == true
      p 'Your guess is too short. All guesses must be 4 characters. Please try again.'
    end
  end

  def has_won?(secret)
    @guess.eql?(@secret)
  end

  def generate_code
    @secret.generate_code
  end

  def compare_guess
    correct_guesses = []
    if @guess.split('')[0] == generate_code[0]
      correct_guesses << @guess.split('')[0]
    elsif @guess.split('')[1] == generate_code[1]
      correct_guesses << @guess.split('')[1]
    elsif @guess.split('')[2] == generate_code[2]
      correct_guesses << @guess.split('')[2]
    elsif @guess.split('')[3] == generate_code[3]
      correct_guesses << @guess.split('')[3]
    end
  end
    #more compact way to do above but needs new test
    #correct_guesses = @guess.split('') & @secret.generate_code


  def compare_positions
    @guess.split('').zip(generate_code).map { |a, b| a if a == b }
  end

  def guess_output
    p "#{@guess} has #{compare_guess.compact.length} of the correct element(s) with #{compare_positions.compact.length} in the correct position(s)"
  end
end

  # def you_win
  #   if has_won? = true
  #     p 'Congratulations! You guessed the sequence #{@secret}
  #     in #{mastermind.guess_counter} guesses in #{mastermind.timer}'
  #   end

#
# guess = Guess.new('YRGB')
# guess.too_long?
