module Logic

	def Logic.data_collection
		# puts "Enter the total amount of liquids per Gallon"
		# total_gallon = gets.chomp
		puts "Type of liquid?"
		liquid_type = gets.chomp
		puts "Enter your current pH level"
		current_ph_level = gets.chomp.to_f
		puts "Enter your pH level prior to test"
		prior_ph_level = gets.chomp.to_f
		user_input = {
			# total_gallon: total_gallon,
			liquid_type: liquid_type,
			current_ph_level: current_ph_level,
			prior_ph_level: prior_ph_level,
		}
	end

	def Logic.ph_safety_check(ph_value)
		if ph_value > 6.5 && ph_value < 8.5
			ph_safe_current = true
		elsif ph_value < 6.5 || ph_value > 8.5
			ph_safe_current = false
		end
	end

	def Logic.ph_similarity(ph_level)
		ph_level_rnd = ph_level.round
		puts ph_level_rnd
		if ph_level_rnd == 1 || ph_level_rnd ==  2
			ph_similarity = "Stomach Acid"
		elsif ph_level_rnd == 3
			ph_similarity = "Cola"
		elsif ph_level_rnd == 5
			ph_similarity = "Banana"
		elsif ph_level_rnd == 7
			ph_similarity = "Water"
		elsif ph_level_rnd == 8
			ph_similarity = "Blood"
		elsif ph_level_rnd == 9
			ph_similarity = "Baking Soda"
		elsif ph_level_rnd == 12
			ph_similarity = "Ammonia"
		else
			ph_similarity = false
		end
	end

	def Logic.pre_similarity_check_filler(ph_sim_current, ph_sim_prior, tested_liquid)
		if !(ph_sim_current == tested_liquid && ph_sim_prior == tested_liquid)
			Logic.ph_similarity_results(ph_similarity_current, ph_similarity_prior, user_values[:liquid_type])

		elsif ph_sim_current == tested_liquid && ph_sim_prior == tested_liquid
			# Sim Ignored
		end
	end

	def Logic.ph_similarity_results(ph_sim_current, ph_sim_prior, tested_liquid)
		# puts "Results pushed to logic"
		# puts "Debug: #{ph_sim_current}"
		# puts "Debug: #{ph_sim_prior}"
		# puts ph_sim_prior = !false
		# puts ph_sim_current = !false
		if ph_sim_current == false && ph_sim_prior == false
		elsif ph_sim_current == false
			puts "Fun fact! #{ph_sim_prior} has a similar pH to your #{tested_liquid} in the beginning of our tests."
		elsif ph_sim_prior == false
			puts "Fun fact! The pH of #{ph_sim_current} is similar to the current pH of your #{tested_liquid}."
		elsif ph_sim_current != false && ph_sim_prior != false
			puts "Fun fact! The pH of your #{tested_liquid} had a similar pH to #{ph_sim_current} and is now similar to #{ph_sim_prior}."
		else
			puts "[DEBUG] Unable to determine something."
			puts "Current Sim Result: #{ph_sim_current}"
			puts "Prior Sim Result: #{ph_sim_prior}"
			puts "Tested Liquid: #{tested_liquid}"
		end
		# puts "Check ended"
	end

	def Logic.ph_check_basic_filler(ph_value_current, ph_value_prior)
		if !(ph_value_current > 6.5 && ph_value_prior > 8.5)
			puts "DANGER! Both pH values were below safe levels!"
		elsif !(ph_value_prior > 6.5 && ph_value_current > 8.5)
			puts "DANGER! Both pH values were below safe levels!"
		elsif not (ph_value_current > 6.5 || ph_value_current < 8.5)
			puts "DANGER! Both pH value were below safe levels!"
		elsif !(ph_value_current < 6.5 && ph_value_current < 8.5)
			puts "Current pH levels are within safety range"
		elsif not (ph_value_current < 6.5 || ph_value_current > 8.5)
			puts "One of your current pH levels is within safety range"
		elsif not (ph_value_prior < 6.5 || ph_value_prior > 8.5)
			puts "One of your prior pH levels is within safety range"
		end
	end

	def Logic.data_modifier(value_hash)

	end

end

user_values = Logic.data_collection

# Data check debug
# puts user_values[:current_ph_level]
# puts user_values[:current_ph_level].class

# pH safety check on current readings and prior readings
ph_safe_current = Logic.ph_safety_check(user_values[:current_ph_level])
ph_safe_prior = Logic.ph_safety_check(user_values[:prior_ph_level])

# pH Similarity check
ph_similarity_current = Logic.ph_similarity(user_values[:current_ph_level])
ph_similarity_prior = Logic.ph_similarity(user_values[:prior_ph_level])

# pH safety statement - Comming soon
# ph_safe_statement(ph_safe_current)
# ph_safe_statement(ph_safe_prior)

puts "Current pH level is safe: #{ph_safe_current}"
puts "Prior pH level was safe: #{ph_safe_prior}"

# puts "Debug: #{ph_similarity_current}"
# puts "Debug: #{ph_similarity_prior}"

# pH Similarity results
Logic.ph_similarity_results(ph_similarity_current, ph_similarity_prior, user_values[:liquid_type])

# Debugging
# puts ph_similarity_prior == !true
# puts ph_similarity_current == !true
# Logic.data_modifier(user_values)
