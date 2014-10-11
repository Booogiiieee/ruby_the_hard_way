print "How old are you? "
age = gets.chomp().to_i
print "How tall are you? (in m) "
height = gets.chomp().to_f
print "How much do you weigh? (in kg) "
weight = gets.chomp().to_i
bmi = weight / (height * height)

puts "So, you're #{age} years old, #{height} m tall and #{weight} kg heavy."
puts "...calculate..."

puts "Your BMI: ", bmi