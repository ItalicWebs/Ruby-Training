filename = ARGV.first

puts "[WARNING!] We're going to erease #{filename}"
puts "[WARNING!] If you wish to continue, type PLEASE-ERASE. Please enter to exit."
erase_confirmation = $stdin.gets.chomp

if erase_confirmation == "PLEASE-ERASE"
	puts "Mounting #{filename}"
	target_file = open(filename, 'w')
	
	puts "Erasing data"
	# target.truncate(0) # 'w' is Write-only, truncates existing file to zero length or creates a new file for writing.
	
	puts "[INFO] We'll need some data to over write the file with"
	print "Please provide some data "
	data_line1 = $stdin.gets.chomp
	print "Please provide more data "
	data_line2 = $stdin.gets.chomp
	print "Please provide one last piece of data "
	data_line3 = $stdin.gets.chomp
	
	puts "We're writing that data now."
	target_file.write(data_line1, "\n", data_line2, "\n", data_line3)
	puts "Task is complete. We're closing your file now"
	target_file.close
else
	puts "[INFO] Operation Aborted! Press enter to end"
	$stdin.gets.chomp
	exit
end





# Mode |  Meaning
# -----+--------------------------------------------------------
# "r"  |  Read-only, starts at beginning of file  (default mode).
# -----+--------------------------------------------------------
# "r+" |  Read-write, starts at beginning of file.
# -----+--------------------------------------------------------
# "w"  |  Write-only, truncates existing file
     # |  to zero length or creates a new file for writing.
# -----+--------------------------------------------------------
# "w+" |  Read-write, truncates existing file to zero length
     # |  or creates a new file for reading and writing.
# -----+--------------------------------------------------------
# "a"  |  Write-only, starts at end of file if file exists,
     # |  otherwise creates a new file for writing.
# -----+--------------------------------------------------------
# "a+" |  Read-write, starts at end of file if file exists,
     # |  otherwise creates a new file for reading and
     # |  writing.
# -----+--------------------------------------------------------
# "b"  |  Binary file mode (may appear with
     # |  any of the key letters listed above).
     # |  Suppresses EOL <-> CRLF conversion on Windows. And
     # |  sets external encoding to ASCII-8BIT unless explicitly
     # |  specified.
# -----+--------------------------------------------------------
# "t"  |  Text file mode (may appear with
     # |  any of the key letters listed above except "b").