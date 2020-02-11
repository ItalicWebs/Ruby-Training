# There's two ways of dealing with nil values. Below is a good way.
new_user_status_time_state_history ||= 0
#||= is conditional assignment. Meaning "assign if it's nil"

#Second way of dealing with nil values.
# new_user_status_time_state_history = 0 if new_user_status_time_state_history.nil?

# Just displays state history to make sure value is initialized
puts new_user_status_time_state_history
puts "Hello User! You seem new here, can we have your name?"
new_user_name = gets.chomp
#If I miss chomp, there will be a new line.
puts "Thanks #{new_user_name}, what's your status?"
new_user_status = gets.chomp
puts "Awesome! How many hours will you be #{new_user_status} for?"
puts "Also! Hope you're having a good night!" if new_user_status.eql? "Sleeping"
new_user_status_time_state = gets.chomp.to_i
#If we don't tell Ruby it's an interger, the variable will be assumed to be a string
new_user_status_time_state_history += new_user_status_time_state
puts "Sweet! Setting you to #{new_user_status.chomp} for #{new_user_status_time_state}. In your life time, you've been #{new_user_status.chomp} for #{new_user_status_time_state_history} hours"
