puts "Guess a number"
guessed_number = gets.chomp.to_i
winning_number = 10
warm_number_high = winning_number + 2
warm_number_low = winning_number - 2
#puts "low range"
#puts (warm_number_low...(winning_number - 1))
#puts "high range"
#puts ((winning_number + 1)...warm_number_high)

#Variable Debug
#warn_range_high = ((winning_number + 1)...warm_number_high)
#puts warn_range_high
#puts guessed_number == warn_range_high
puts guessed_number === (9..13)
puts guessed_number === 11
#puts 9..13 === guessed_number
#puts ((winning_number + 1)...warm_number_high)
#puts guessed_number == ((winning_number + 1)...warm_number_high)
#puts guessed_number == 11...12
