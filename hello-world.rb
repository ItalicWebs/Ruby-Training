puts "Hello World!"
puts 3 * 3 * 10 / 2 + 1 #Math
puts 3 ** 3 #exponents
puts 10 % 3 #modulus. Returns the reminder of division
#interger is a whole number. Ruby assumes you're working with intergers e.g. (10 / 3 will eql 3)
#float is a decimal number. If decimals are important, you must use decimals in your code (e.g puts 10.00 / 3.00)

#comparing
# == equal to
# != not equal to
# great than >
# great than or equal to >=
# less than <
# less than or qual to <=
# e.g.
puts 3 == 3
puts 3 == 4

#variables must be lowercase
#if your variable contains numbers, do not use quotes. Quotes converts numbers into strings and strings cannot be used in math.
#However, you can convert. e.g. your variable is polar_age = "25". When you use variable, add .to_i to the end.
#Would look like polar_age.to_i

eu_name = "Polar"
eu_current_age = 25
increase_years_by = 3
increase_years_by_string = "3"

#puts "In" increase_years_by eu_name "will be " eu_current_age + increase_years_by
puts increase_years_by + eu_current_age
#udemy's way of displaying multiple variables on a puts line. Based on testing, you cannot mix and match strings and intergers
puts eu_name + increase_years_by_string

# You can also set variables to equal to other variable
years_after = eu_current_age + increase_years_by
puts years_after

#using variable and strings
puts "In #{increase_years_by} years #{eu_name} will be #{years_after}"
#if a string is used in a variable (Google's way). Works w/ strings and intergars
puts "In #{increase_years_by_string.to_i} years #{eu_name} will be #{years_after}"

#variable assignment. If you can two variables (e.g. years_after = eu_current_age + increase_years_by)
#together and create a new variable but you can also modify your existing variable using assignments
# += adds and assigns
# -= subtract and assign
# *= multiply and assign
# /= divides and assign
# %= modulus and assign
# **= exponent and assign

#Assignment w/ a defined number
useless_variable = 10
puts useless_variable *= 5
puts useless_variable

#Assignment w/ a variable
useless_variable_2 = 20
useless_variable_3 = 2
puts useless_variable_2 *= useless_variable_3
puts useless_variable_2


#Useful things with if and than statements

#Two conditions can be used in an if statements
# if useless_variable equals 2 or 3 then true
if useless_variable == 2 || useless_variable == 3
  puts "true"
end
# if useless_variable is 2 and useless_variable_2 is 4
if useless_variable == 2 && useless_variable_2 == 4
  puts "true"
end

# if useless_variable is 2 then everything is okay but if it's 3 there's a problem.
if useless_variable == 2
  puts "okay"
elsif useless_variable == 3
  puts "there's a problem"
else
  puts "we're not sure"
end
