class Guess
  attr_reader :secrets,
              :convert,
              :guess_counter,
              :timer,
              :secret_code,
              :guess

  def initialize(secret)
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

  def compare_guess
    correct_guesses = @guess.split('') & @secret.generated_code
    correct_guesses.length
  end

  def compare_positions
    result = @guess.split('').zip(@secret.generated_code).map { |a, b| a if a == b }
    result.compact.length
  end

  def guess_output
    p "#{@guess} has #{compare_guess} of the correct element(s) with #{compare_positions} in the correct position(s)"
  end
end
