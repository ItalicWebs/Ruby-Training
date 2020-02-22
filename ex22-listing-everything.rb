# Escapes
# \\	## Backslash escape
# \'	## Single-quote (') escape
# \"	## Double-quote (") escape
# \b	## backspace
# \n	## linefeed
# \t	## Tab (TAB)

# File interactions

# variable_for_file = ARGV ## Defines file as a variable
# file_discriptor = File.open(variable_for_file).read ## Converts a filename to a file_discriptor. This opens file in read only
# file_discriptor = File.open(filename, 'w') ## Same concept as above but in write mode
# file_discriptor.write("writing this to file") ## Writing to file discriptor
# file_discriptor.close ## When script is finished, file should be closed

# Parameters
# your_name, your_time, your_day = ARGV		## Passing commands via command line

# Methods
# def name_of_method(arg1 ,arg2)
    # puts "What method does"
# end
# name_of_method(100, 200) ## How to pass variables

# Array
# (1..23) ## Basic array. Numbers 1-23
# (1...23) ## Basic array but the end number is excluded. Numbers 1-22
# name_array = ['Hobo, 'Polar', 'James', 'Jose'] ## More normal array

# Hash
# end_user_information = {
# 	1000001 => {
# 		usr_first_name: 'Jose',
# 		usr_last_name: 'Polar',
# 	1000002 => {
# 		usr_first_name: 'James',
# 		usr_last_name: 'Hobo',
# }

# puts end_user_information['1000001'].has_key?(:usr_first_name) ## Changing if a key exists in hash
# puts end_user_information.keys ## listing keys

# Common Symbols
# ==	## equal to
# !=	## not equal to
# >		## greater than
# >=	## greater than or equal to
# < 	## less than
# <=	## less than or qual to
# &&	## Normally used in if/than statement (e.g. if x == 2 && x < 20)
# ||	## Many usages. If it's in a if/than statement it can be used as 'or' (e.g. if x == 2 || x == 3)

# Assignments
# +=	## adds and assigns
# -=	## subtract and assign
# *=	## multiply and assign
# /=	## divides and assign
# %=	## modulus and assign
# **=	## exponent and assign

# Useful stuff
# (some_range).include?(some_number)	## Useful if you want to know if a number exists in a array or hash.

# Variables
# string_variable = "This"	## Variable is a string.
# integer_variable = 30		## Variable is an integer or number.
# float_variable = 30.0		## Similar to integer but contains decimal
# user_input = gets.chomp	## Grabs user input and removes line break
# user_input.to_i			## Converts a string into an integer
# user_input.to_s			## Converts back to a string
# .chomp					## Removes trailing space
# .downcase					## converts all lowercase
# .upcase					## coverts all uppercase
# .capitalize				## capitalizes first letter
# .reverse					## reverses everything in string
# .swapcase					## switches capitalized to lowercase and vice versa
# .length					## returns character length

# Loops
# Do an operation while an operation is true.
# number = 0
# while number < 10 do
	# puts number += 1 #Displays number variable and adds 1
# end

# Similar to above. Do an operation until an operation is true.
# number_2 = 0
# until number_2 == 10 do
	# puts number_2 += 1
# end

# Do an operation for each item
# for number_3 in 1..5
# 	puts number_3
# end

# for number_4 in 1..5
# 	puts "Hi"
# end

# (1..5).each do |num|
# 	puts num
# end

# my_array = [1,2,3,4,5]
# my_array.each do |num|
# 	puts num
# end
