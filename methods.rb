# In other languages, methods are sometimes referred to as functions. 
# Methods give you the ability to call an action from anywhere without having to re-type it.

# A structure of a method looks like this example
# def name(arguments)
	# do stuff
# end

# The method is called wisdom
# def wisdom()
	# puts "You gots to know when to hold em, and know when to fold em!"
# end

# To call the method wisdom, you must type out its name
# wisdom

# This example askes for user input and stores that input in "submitted_number". It will send the input to our method.

# def numbers(x)
	# puts "Your number is: #{x}"
# end

# submitted_number = gets.chomp

# numbers(submitted_number)


# Performing fizz buzz using methods
# def fizzbuzz(x)
	# if x % 3 == 0 && x % 5 == 0
		# puts "#{x} is Fizz Buzz!"
	# elsif x % 3 == 0
		# puts "#{x} is Fizz!"
	# elsif x % 5 == 0
		# puts "#{x} is Buzz!"
	# else
		# puts "#{x}"
	# end
# end

# puts "Give us your number"
# fizzbuzz_submitted = gets.chomp.to_i
# fizzbuzz(fizzbuzz_submitted)


# Calling a method and pushing your own information
# def namer(first_name, last_name)
	# puts "Your first name is: #{first_name}"
	# puts "Your last name is: #{last_name}"
# end

# namer("John", "Testing")


# Calling a method with information already supplied
# def namer (first_name = "John", last_name = "Testing")
	# puts "Your first name is: #{first_name}"
	# puts "Your last name is: #{last_name}"
# end

# namer

# Testing. Calling a method w/ a variable

# puts "Type in your customer number please"
# query_customer_number = gets.chomp

customer = {
	'001' => {
		cus_first_name: 'Jeff',
		cus_last_name: 'Polar',
	}
}

# puts customer['001'][:cus_first_name]


# def namer (first_name, last_name)
	# puts "Your first name is: #{first_name}"
	# puts "Your last name is: #{last_name}"
	
# end

# namer(customer[query_customer_number][:cus_first_name], customer[query_customer_number][:cus_last_name])


def testing (cus_first_name:, cus_last_name:)
	puts cus_first_name
	puts cus_last_name
end

testing(cus_first_name: customer['001'][:cus_first_name], cus_last_name: customer['001'][:cus_last_name])