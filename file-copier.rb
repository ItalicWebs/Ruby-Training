source_file, destination_file = ARGV

puts "[INFO] Copying #{source_file} to #{destination_file}"

in_file = open(source_file).read
# in_data = in_file.read
puts "[INFO] Your file is #{in_file.length} bytes long"
puts File.exist?(destination_file)
if File.exist?(destination_file) == true
	puts "[WARNING!] Destination file exists. Continuing will overwrite data"
	puts "[WARNING!] To continue, type OVERWRITE-DATA. Hit enter to exit."
	overwrite_confirmation = $stdin.gets.chomp
	if overwrite_confirmation == "OVERWRITE-DATA"
		puts "[INFO] Copying file. Please wait."
		open(destination_file, 'w').write(in_file)
		puts "[INFO] File complete."
		puts source_file
		source_file.close
		destination_file.close
		# Debug
		# puts source_file
		# puts destination_file
	else
		puts "[INFO] Aborting"
		exit
	end
	
elsif File.exist?(destination_file) == false
	puts "[INFO] Copying file. Please wait."
	# copied_file = open(destination_file, 'w')
	# copied_file.write(in_file)
	open(destination_file, 'w').write(in_file)
	puts "[INFO] File complete."
	puts source_file
	source_file.close
	destination_file.close
	# Debug
	# puts source_file
	# puts destination_file
end
