winning_number = 10 #Number in which Ruby will respond with success
warm_number_range = 3 #Changes the range of numbers considered warm
warm_number_high = winning_number + warm_number_range
warm_number_low = winning_number - warm_number_range
warm_range_high = ((winning_number + 1)..warm_number_high)
warm_range_low = (warm_number_low..(winning_number - 1))

#debug information
#puts "low range"
#puts (warm_number_low...(winning_number - 1))
#puts "high range"
#puts ((winning_number + 1)...warm_number_high)

# Introduction
puts "###### [ ..... Welcome to some dumb guessing game! ..... ] ######"
puts "###### [ .. Guess right and uhm. Nothing will happen! .. ] ######"
puts ""
puts ""
puts "Pick a number between 1-20!"
guessed_number = gets.chomp.to_i

# Winner Statuses
if guessed_number == winning_number
  puts "[WINNER] Wow! Right on! #{guessed_number} is Correct!"
  attempt_status = "success"
end

# Number is low (Using elsif)
if guessed_number < warm_number_low && guessed_number > 0
  puts "COLD! #{guessed_number} is too low!"
  attempt_status = "failed"
elsif (warm_range_low).include?(guessed_number)
  puts "WARM! #{guessed_number} is close!"
  attempt_status = "failed"
end

# Initial way I was doing this. Changed after learning elsif
#if (warm_range_low).include?(guessed_number)
#  puts "WARM! #{guessed_number} is close!"
#  attempt_status = "failed"
#end

# Number is high
if guessed_number > warm_number_high && guessed_number <= 20
  puts "COLD! #{guessed_number} is too high!"
  attempt_status = "failed"
end

if (warm_range_high).include?(guessed_number)
  puts "WARM! #{guessed_number} is close!"
  attempt_status = "failed"
end

# Number out of scope

if guessed_number < 1 || guessed_number > 20
  puts "[ERROR] HEY! That wasn't a choice!"
  attempt_status = "failed"
end

# Additional Messages
if attempt_status == "failed"
  puts "Better luck next time. See nothing happened."
elsif attempt_status == "success"
  puts "[WINNER] Nicely done! See nothing happened."
else
  puts "[ERROR] Something went wrong and status is missing"
end
