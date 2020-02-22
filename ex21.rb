def add(a, b)
    puts "adding #{a} + #{b}"
    return a + b
end

def subtract(a, b)
    puts "SUBTRACTING #{a} - #{b}"
    return a - b
end

def multiply(a, b)
    puts "MULTIPLYING #{a} * #{b}"
    return a * b
end

def divide(a, b)
    puts "DIVIDING #{a} / #{b}"
    return a / b
end

def multiply_add(a, b, c)
    puts "Multiplying #{a} by #{b} and then adding #{c}"
    return (a * b) + c
end


puts "Let's do some math with just fuctions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)
some_info = multiply_add(20, 10, 15)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}, Something: #{some_info}"

# A puzzle for extra credit, type it in anyway.
puts "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"

# puts "Dividing #{iq} by 2. Taking the result of that and multiplying by #{weight}. We're subtracting height by
# the result of that. We're adding the result of that to age"

puts age + (height - (weight * (iq / 2)))

# Simple Forumula

add_value = add(20, 10)
sub_value = subtract(30, 15)
multi_value = multiply(10, 6)

puts "Some value: #{add_value}, Other value: #{sub_value}, 3rd Value: #{multi_value}"
