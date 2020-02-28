#.chomp - Removes trailing space
#.downcase - converts all lowercase
#.upcase - coverts all uppercase
#.capitalize - capitalizes first letter
#.reverse - reverses everything in string
#.swapcase - switches capitalized to lowercase and vice versa
#.length - returns character length
#.to_i - converts string to interger

puts "Would you like a snack? Yes or No?"
wants_snack = gets.chomp.downcase

if wants_snack == "yes"
  puts "Sweet, here's a snack"
elsif wants_snack == "no"
  puts "Aww okay"
else
  puts "I don't know what #{wants_snack} is!!!"
end

# Array is similar to a variable but you can place more things into it
# e.g.

# v Key name
accepted_responses = ["Yes", "Maybe", "Sure", "Ok", 34]
# ^                      |       |        |      |   |
#Key Number             0       1        2      3   4

# Format puts name_of_array[Key Number]
puts accepted_responses[2]
# results in "Sure" being printed
# Arrays aren't limited to strings. intergers can also be included.
# We can also manipulate keys instead of arrays
accepted_responses[4] *= 10
puts accepted_responses[4]

#Arrays can also contain other variables

banned_response = "ketchup"
not_accepted_responses = ["no", "naw", banned_response]
your_response = gets.chomp.downcase
if your_response == not_accepted_responses[2]
  puts "wow, #{your_response}... really?"
else
  puts "I agree, #{your_response} is sweet."
end

# You can also put other arrays in arrays. These are called multidimensional array
# e.g.
an_array_within = ["hello-world", "iampolar", [1,2,3,4,5], banned_response]
puts an_array_within[2][2]

#we can also use a name of a separate array

first_array = ["day 1", "day 2", second_array]
second_array = ["day 3", "day 3"]


# Should return the number 3. [1,2,3,4,5] is the #2 key in first array and 3 is the #2 key of the array inside.


# Modifying Arrays
# If we try to add to an arrray and location is specific, we can use the following
eu_users_array = ["Jeff", "James", "Jack", "Jake"]
eu_users_array.insert(1, "Justin")
# Format name_of_array.insert(key_number_where_to_insert, "content")

# If placement isn't important, this will insert the name but will add it to the end
eu_users_array.push("Jasper")
# We can also add it to the front of our arrays
eu_users_array.unshift("John")
# This would be similar to en_users_array.insert(0, "John")

#Removing items from arrays
#removes last item from the list
eu_users_array.pop
#removes first item from the arrays
en_users_array.shift
#remove a specific item from the array
eu_users_array.delete_at(2)
# would remove Jack because his key value is 2
# We can also remove by the value of the string
en_users_array.delete("Jack")
# If there's multiple Jack's, both will be removed. Be careful.

# Adds orange to our array
colors = ['red','yellow','green']
colors << 'orange'

# Sorting. This is not a destructive method but will instead create a new array in memory and return it to you.
colors.sort

# Destructive methods use less but for this we won't worry about it.
