# let's get to the files
filename = ARGV.first
txt = open(filename)
puts txt.read

print "Type the filename again: "
txt_again = $stdin.gets.chomp
txt_again = open(txt_again)
puts txt_again.read

# there are interesting commands to do sth with files:
# variable = open(filename) -> save the content of the file in the variable
# variable.truncate() -> erase the file
# variable.write(variable) -> write thing from a variable in the file
# variable.close -> close the file
# variable.length -> measure the lenght of a file
# File.exist?(variable)

