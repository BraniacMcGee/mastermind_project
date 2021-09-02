<<<<<<< HEAD
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
=======
def greeting
  puts "Welcome to MASTERMIND!
  Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  response = gets.chomp
  if response == 'P' || response == 'p'
    puts 'This is a placeholder'
  elsif response == 'I' || response ==  'i'
    puts 'here are the instructions'
  elsif response == 'Q' || response == 'q'
    puts greeting
  else puts 'Please select one of the options above'
    puts greeting
  end
end

greeting
>>>>>>> 128ccf51ac7e5c5345ac3183b5cb6befdcb34bd0
