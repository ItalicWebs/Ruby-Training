puts "Guess a number"
guessed_number = gets.chomp.to_i
winning_number = 10
warm_number_high = winning_number + 2
warm_number_low = winning_number - 2
#puts "low range"
#puts (warm_number_low...(winning_number - 1))
#puts "high range"
#puts ((winning_number + 1)...warm_number_high)

# Winner Statuses
if guessed_number == winning_number
  puts "Wow! Right on!"
  attempt_status = "success"
end

# Low Statuses
if guessed_number < warm_number_low
  puts "To low"
  attempt_status = "failed"
end

if guessed_number == (warm_number_low...(winning_number - 1))
  puts "Getting warm!"
  attempt_status = "failed"
end

# High Status
if guessed_number > warm_number_high
  puts "To high"
  attempt_status = "failed"
end

if guessed_number == ((winning_number + 1)...warm_number_high)
  puts "Getting warm!"
  attempt_status = "failed"
end

#Variable Debug
puts ((winning_number + 1)...warm_number_high)
puts guessed_number == ((winning_number + 1)...warm_number_high)
puts guessed_number == 11...12

# Additional Messages
if attempt_status == "failed"
  puts "Better luck next time"
else
  puts "Nicely done!"
end
