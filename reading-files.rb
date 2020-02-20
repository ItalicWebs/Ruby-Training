filename = ARGV.first

txt = open(filename)
# By default, using open() will open in read only mode
# Below are the available modes. 
# For example read write would be txt = open(filename, 'r+')
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

puts "Here's your file #{filename}:"
print txt.read

# print "Type the filename again: "
# file_again = $stdin.gets.chomp

# txt_again = open(file_again)

# print txt_again.read

txt.close

# Debug
# print txt.read

# Other useful commands when dealing with files
# close -- Closes the file. Like File->Save.. in your editor.
# read -- Reads the contents of the file. You can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file. Watch out if you care about the file.
# write('stuff') -- Writes "stuff" to the file.
# seek(0) -- Move the read/write location to the beginning of the file.