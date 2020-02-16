# Fizz Buzz Game
# Go through numbers 1-100 
# If number is divisible by 3, say Fizz
# If number is divisible by 5, say Buzz
# If number is divisible by 3 and 5, say Fizz Buzz

# Using an each loop
(1..100).each do |x|
	if x % 3 == 0 && x % 5 == 0
		puts "Fizz Buzz #{x}"
	elsif x % 3 == 0
		puts "Fizz #{x}"
	elsif x % 5 == 0
		puts "Buzz #{x}"
	else
		puts "#{x}"
	end
end

# Using a while loop
d = 0
while d <= 100 do
	if d % 3 == 0 && d % 5 == 0
		puts "Fizz Buzz #{d}"
	elsif d % 3 == 0
		puts "Fizz #{d}"
	elsif d % 5 == 0
		puts "Buzz #{d}"
	else
		puts "#{d}"
	end
	d += 1
end

# Using a until loop
c = 0
until c > 100 do
	if c % 3 == 0 && c % 5 == 0
		puts "Fizz Buzz #{c}"
	elsif c % 3 == 0
		puts "Fizz #{c}"
	elsif c % 5 == 0
		puts "Buzz #{c}"
	else
		puts "#{c}"
	end
	c += 1
end