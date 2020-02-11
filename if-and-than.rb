puts "Guess a number"
guessed_number = gets.chomp.to_i
winning_number = 10
warm_number_high = winning_number + 2
warm_number_low = winning_number - 2
warm_range_high = ((winning_number + 1)..warm_number_high)
warm_range_low = (warm_number_low..(winning_number - 1))
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
  puts "COLD! Too low!"
  attempt_status = "failed"
end

if (warm_range_low).include?(guessed_number)
  puts "WARM! Getting close!"
  attempt_status = "failed"
end

# High Status
if guessed_number > warm_number_high
  puts "COLD! Too high!"
  attempt_status = "failed"
end

if (warm_range_high).include?(guessed_number)
  puts "Getting warm!"
  attempt_status = "failed"
end

# Additional Messages
if attempt_status == "failed"
  puts "Better luck next time"
else
  puts "Nicely done!"
end
