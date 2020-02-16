 favorite_foods = {
	"John" => "Pepperroni Pizza",
	"Jeff" => "Cheese Burger",
	"Jesse" => "Veggie Soup",
 }
 
 puts favorite_foods["John"]
 
 
# Hashs are very similar to arrays but the key can be defined unlike an array
# example_hash = }
	# "key" => "value
# }
# puts example_hash["key"]

# Just like an array, hashs can also contain other arrays and hashs.

eu_other_names = ["Polar, Jose, Hobo, James"]

eu_all_names = {
	"other_names" => eu_other_names,
	"Meg" => "Pie"
}
puts eu_all_names["other_names"]

# Manipulation

# Adding items to your hash. This adds to the end of your hash. Order in a hash doesn't matter like it does in an array

eu_all_names["Mashy"] = "Ham"
puts eu_all_names["Mashy"]

# Deleting an item from your array
eu_all_names.delete("Mashy")
puts eu_all_names

# Q: When should I use an array and when should I use an array?
# A: You can always use either or. It depends on your project.