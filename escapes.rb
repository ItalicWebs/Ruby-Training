# Escapes 

# Escape	What it does.
# \\	Backslash ()
# \'	Single-quote (')
# \"	Double-quote (")
# \a	ASCII bell (BEL)
# \b	ASCII backspace (BS)
# \f	ASCII formfeed (FF)
# \n	ASCII linefeed (LF)
# \r	ASCII Carriage Return (CR)
# \t	ASCII Horizontal Tab (TAB)
# \uxxxx	Character with 16-bit hex value xxxx (Unicode only)
# \v	ASCII vertical tab (VT)
# \ooo	Character with octal value ooo
# \xhh	Character with hex value hh


# Example of a backslash (\\)
puts "To acess our file share, type in \\\\company_nas01\\share\\"
# This would output "To access our file share, type in \\company_nas01\share\"

# Example of a single quote (\')
puts 'I\'m going swimming'
# Without the \', your string would pre-maturally break.

# Example of a double quote (\")
puts "Well, Kris said \"Install Linux or Buy a Mac Loser\""
# Same thing as a single quote, without \", your string would pre-maturally break.

# Example of a Horizontal Tab (\t)
# Would indent your response in the interface
puts "Gucci"
puts "\tGang"
puts "\t\tGucci"
puts "\t\t\tGang"
puts "\t\t\t\tGucci"
puts "\t\t\t\t\tGang"

# Example of a linefeed (\n)
# Basically a line break
puts "Days Since Last Complaint:\n0"

# Example of backspace (\b)
puts "Deleting You\b\b\b Bro"

# Example of Carriage Return
# "Means to return to the beginning of the current line without advancing downward. The name comes from a printer's carriage, as monitors were rare when the name was coined."
# Basically don't use.
puts "You're not advancing downwards \r"

# Example of a formfeed (\f)
# "Form feed means advance downward to the next "page". It was commonly used as page separators, but now is also used as section separators. (It's uncommonly used in source code to divide logically independent functions or groups of functions.)"
# Don't use it basically
puts "No idea what \f does"

