class Game
  attr_reader :secret

  def initialize(secret)
    @secret = secret
  end

  def greeting
    puts "Welcome to MASTERMIND!
    Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    # # response = gets.chomp
    # if gets.chomp == 'P' || gets.chomp == 'p'
    #   puts 'This is a placeholder'
    # elsif gets.chomp == 'I' || gets.chomp ==  'i'
    #   puts 'here are the instructions'
    # elsif gets.chomp == 'Q' || gets.chomp == 'q'
    #   puts greeting
    # else puts 'Please select one of the options above'
    #   puts greeting
    #end
  end

  def play
  
end
