# every symbol & word and what it's for

# puts gives text back on the print line
puts "Print this on a line"

# hash is used to define comments
# this is a comment

# quotes "" or '' are used to declare something to print out after for example a puts

# the math symbols
# + plus
# - minus
# / slash
# * asterisk
# % percent
# < less-than
# > greater-than
# <= less-than-equal
# >= greater-than-equal

# while holding "alt", you can mark more than one line

# define a variable with the "equal" sign =
cars = 100
eyes = 'Blue'

# print variables like this:
puts "There are #{cars} on this road."

# or like this:
puts "You have %s eyes." % eyes
# note: %s for strings
# %f for floatings
# %d for doubles

# it's possible to "save" strings into a variable
x = "There is a string in a variable."
puts x

# it's possible to print out something 10 times
puts "." * 10

# there is also a different way to print out something, with print
print_sth = "I'm printed with print, not puts."
print print_sth
puts "And I probably need a '\n' for a new line."

# lets check out a formatter
formatter = "%s %s %s %s"
puts formatter % [1, 2, 3, 4]
puts formatter % ["one", "two", "three", "four"]

# lets check out the <<PARAGRAPH
puts <<PARAGRAPH
That's something special. Because in here, we can type things
like we want to.
So that's the thing =).
PARAGRAPH

# we can do something similar with a variable
fat_cat_list = <<MY_HEREDOC
fat_cat_list:
\t* Cat food
\t* Fishies...\n\t* Grass
MY_HEREDOC
puts fat_cat_list