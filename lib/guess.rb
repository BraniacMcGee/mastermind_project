class Guess
  attr_reader :secrets,
              :convert,
              :guess_counter,
              :timer,
              :secret_code

  def initialize(secret)
    # @guess = guess
    @secret = secret
  end

  def gets_input
    @guess = gets.chomp.upcase
  end

  def too_short?
    @guess.split('').count < 4
  end

  def too_long?
    @guess.split('').count > 4
  end

  def error_message
    if too_long?
      p 'Your guess is too long. All guesses must be 4 characters. Please try again.'
    elsif too_short?
      p 'Your guess is too short. All guesses must be 4 characters. Please try again.'
    end
  end

  def has_won?
    @guess.split('').eql?(@secret.generated_code)
  end

  #this returns a new code every time unlike secret.generated_code
  # def generate_code
  #   @secret.generated_code
  # end

  def compare_guess
    correct_guesses = @guess.split('') & @secret.generated_code
    # if @guess.split('')[0] == @secret.secret_code[0]
    #   correct_guesses << @guess.split('')[0]
    # elsif @guess.split('')[1] == @secret.secret_code[1]
    #   correct_guesses << @guess.split('')[1]
    # elsif @guess.split('')[2] == @secret.secret_code[2]
    #   correct_guesses << @guess.split('')[2]
    # elsif @guess.split('')[3] == @secret.secret_code[3]
    #   correct_guesses << @guess.split('')[3]
    # end
    correct_guesses.length
  end
    #more compact way to do above but needs new test
    #correct_guesses = @guess.split('') & @secret.generated_code


  def compare_positions
    result = @guess.split('').zip(@secret.generated_code).map { |a, b| a if a == b }
    result.compact.length
  end


  def guess_output
    p "#{@guess} has #{compare_guess} of the correct element(s) with #{compare_positions} in the correct position(s)"
  end

  # def cheat
  #   if @guess == 'C' || 'c'
  #   p @secret.generated_code
  #   end
  # end
end

  # def you_win
  #   if has_won? = true
  #     p 'Congratulations! You guessed the sequence #{@secret}
  #     in #{mastermind.guess_counter} guesses in #{mastermind.timer}'
  #   end

#
# guess = Guess.new('YRGB')
# guess.too_long?
