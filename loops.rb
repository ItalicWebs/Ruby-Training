#Loop allows you to repeat a task until something is met like a variable or array.

# Example of a loop
# While some exists, like a variable equaling something, it will repeat a specified step.
number = 0
while number < 10 do
	puts number += 1 #Displays number variable and adds 1
end

# You can perform a similar thing with until.

number_2 = 0
until number_2 == 10 do
	puts number_2 += 1
end

# For and each loops
# Basically you're telling Ruby to do a certain task a certain amount of times
# Rarely used.
for number_3 in 1..5
	puts number_3
end

for number_4 in 1..5
	puts "Hi"
end

# Each loops

(1..5).each do |num|
	puts num
end

my_array = [1,2,3,4,5]
my_array.each do |num|
	puts num
end


name_array = ["Hobo", "Polar", "James", "Jose"]
name_array.each do |eu_names|
	puts "#{eu_names} has joined the chat."
	puts "#{eu_names} has left the chat."
end
