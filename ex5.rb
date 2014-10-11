name = 'Zed A. Shaw'
age = 35 							# not a lie
height_inches = 74 					# inches
height_cm = height_inches * 2.54 	# cm
weight_lbs = 180 					# lbs
weight_kg = weight_lbs / 2.2		# kg
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'


puts "Let's talk about %s." % name
puts "He's %d inches tall." % height_inches
puts "That's equal to %f cm." % height_cm
puts "He's %d pounds heavy." % weight_lbs
puts "That's equal to %f kg." % weight_kg
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
    age, height_inches, weight_lbs, age + height_inches + weight_lbs]
