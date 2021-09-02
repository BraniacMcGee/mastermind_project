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
