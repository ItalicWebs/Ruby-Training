formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# Note this is a little different then normal. % just means it's passing a hash.

puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}


days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# \n is new line?

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

puts %q{
There's something going on here.
With this weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}

# %q appends new lines for you.

# Quotes

# Adding multiple quotes in a string could confuse Ruby and cause a break where you didn't intend.
# Example
# puts "I am 6'2" tall."
# puts 'I am 6'2" tall.'
# Solution, using a \ or "escape" can help.
# puts "I am 6'2\" tall."
# puts 'I am 6\'2" tall.'
# Solution 2:
# You can also use triple quotes instead """. Keep note, this will treat your content as a string.
# Example of tripe quote
# puts """I am 6'2" tall."""
