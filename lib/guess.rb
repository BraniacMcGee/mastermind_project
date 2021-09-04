class Guess
  attr_reader :secrets,
              :convert

  def initialize(guess)
    @guess = gets.chomp
    @secret = Secret.new(['R', 'G', 'B', 'Y'])

  end

  def convert
    @guess.split('')
  end

  def too_short?
  true == @guess.convert.count < 4
  end

  def too_long?
    true == @guess.convert.count > 4
  end

  def error_message
    if too_long? == true
      p 'Your guess is too long. All guesses must be 4 characters.
      Please try again.'
    else too_short? == true
      p 'Your guess is too short. All guesses must be 4 characters.
      Please try again.'
    end
  end
end

guess = Guess.new('YRGB')
guess.too_long?
