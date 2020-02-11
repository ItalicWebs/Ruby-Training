puts "Guess a number"
guessed_number = gets.chomp.to_i
winning_number = 10
warm_number_high = winning_number + 2
warm_number_low = winning_number - 2
warn_range_high = ((winning_number + 1)..warm_number_high)
puts warn_range_high
#puts "low range"
#puts (warm_number_low...(winning_number - 1))
#puts "high range"
#puts ((winning_number + 1)...warm_number_high)

#Variable Debug


# Working. Seems like the range must be on the left puts (range) === guessed_number
puts (warn_range_high).include?(guessed_number)
puts warn_range_high === guessed_number


# Not Working / Ignore these (?)
#puts warn_range_high
#puts guessed_number == warn_range_high
#puts guessed_number === (9..13)
#puts guessed_number === 11
#puts ((winning_number + 1)...warm_number_high)
#puts guessed_number == ((winning_number + 1)...warm_number_high)
#puts guessed_number == 11...12
