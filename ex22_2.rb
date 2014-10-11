# often the user has to give an imput, let's check this out
print "How old are you?\t"
age = gets.chomp().to_i
print "How tall are you? (m)\t"
height = gets.chomp().to_f

# the name of the script is...
puts "The script is called: #{$0}"

# ARGV - can be wrote like down here with .first
# or sth like: first, second = ARGV
user_name = ARGV.first  # doesn't work proper here
puts "Hi #{user_name}."
puts "Do you like me?"
likes = $stdin.gets.chomp
puts """
Alright, so you said '#{likes}' about liking me.
"""