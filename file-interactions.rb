input_file = ARGV.first

# Functions

def print_all(selected_file)
	puts selected_file.read
end

def rewind(selected_file)
	selected_file.seek(0)
end

def print_line(line_count, selected_file)
	puts "Line #{line_count}: #{selected_file.gets.chomp}"
end

current_file = open(input_file)

puts "Let's print the whole file:\n"
print_all(current_file)
puts "Now let's rewind"
rewind(current_file)
puts "Let's print 3 lines"
current_line = 1
print_line(current_line, current_file)
current_line += 1
print_line(current_line, current_file)
current_line += 1
print_line(current_line, current_file)