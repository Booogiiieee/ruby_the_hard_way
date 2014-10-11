# let's come to the functions
# def name_of_function(arguments)
#   what to do & puts & so on
# end
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

print_two("Zed", "Shawn")

# read a whole file with a script
def print_all(f)
  puts f.read
end

def add_user_input()
  puts "Give me the first number:"
  a = gets.chomp.to_i()
  puts "Awesome, now give me the second number, they will be added up:"
  b = gets.chomp.to_i()
  puts "a = #{a}"
  puts "b = #{b}"
  return a + b
end

puts "#{add_user_input}"