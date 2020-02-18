# Methods

# Game starter
def start_game
	puts "Welcome to Math Flashcards!"
	puts "Select your game type (add|subtract|multiply|divide)"
	game_type = gets.chomp.downcase
	
	if game_type == "add"
		math_method = "add"
		math_flashcards(
			math_method: math_method,
		)
	elsif game_type == "subtract"
		math_method = "subtract"
		math_flashcards(
			math_method: math_method,
		)
	elsif game_type == "multiply"
		math_method = "multiply"
		math_flashcards(
			math_method: math_method,
		)
	elsif game_type == "divide"
		math_method = "divide"
		math_flashcards(
			math_method: math_method,
		)
	else
		puts "Sorry I didn't recognize. Please hit enter to try again"
		gets
		start_game
	end
end

def math_flashcards(math_method:)
	first_number = Random.rand(0..10)
	second_number = Random.rand(0..10)
	system "clear"

# Division Safety Check
	if second_number == 0
		math_flashcards(math_method: math_method,)
	elsif math_method == "divide" && first_number % second_number > 0
		math_flashcards(math_method: math_method,)
	else
	end
	
	puts "What does #{first_number} #{math_method} #{second_number} equal?"
	user_answer = gets.chomp.to_i
	if math_method == "subtract"
		if user_answer == first_number - second_number
			puts "Success! Try again?"
			gets
			start_game
		else
			puts "Sorry but incorrect. Press enter to try again."
			gets
			start_game
		end
	end
	if math_method == "multiply"
		if user_answer == first_number * second_number
			puts "Success! Try again?"
			gets
			start_game
		else
			puts "Sorry but incorrect. Press enter to try again."
			gets
			start_game
		end
	end
	if math_method == "divide"
		if user_answer == first_number / second_number
			puts "Success! Try again?"
			gets
			start_game
		else
			puts "Sorry but incorrect. Press enter to try again."
			gets
			start_game
		end
	end
	if math_method == "add"
		if user_answer == first_number + second_number
			puts "Success! Try again?"
			gets
			start_game
		else
			puts "Sorry but incorrect. Press enter to try again."
			gets
			start_game
		end
	end
end
	

# Method starter
start_game