class Guess
  attr_reader :secrets,
              :convert

  def initialize(guess)
    @guess = guess
    @secret = Secret.new(['R', 'G', 'B', 'Y'])
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

  def compare_guess(secret)
    #use @guess.eql?(@secret) to test win
    #comparing index tests how many in the right spot
    #
  end
end
#
# guess = Guess.new('YRGB')
# guess.too_long?
