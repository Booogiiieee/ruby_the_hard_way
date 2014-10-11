puts "You enter a dark room with two normal doors and one creepy door..."
puts "Do you go through door #1, #2 or door #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake.\nWhat do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."
  puts "3. Run away."
  
  print "> "
  bear = $stdin.gets.chomp
  
  if bear == "1"
    puts "The bear eats your amrs off. You're dead!"
  elsif bear == "2"
    puts "The bear screams back. Then he eats your head off. You're dead!"
  elsif bear == "3"
    puts "Good option. You survived!"
  else
    puts "Well, doing %s is not an option... Oh.. what... the Bear runs away." % bear
  end
  
elsif door == "2"
  puts "You stare into the endless abyss at Cthulh's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."
  
  print "> "
  insanity = $stdin.gets.chomp
  
  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello.  Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end
  
elsif door == "3"
  puts "Nothing in here yet."
  
else
  puts "You stumble around and fall on a knife and die.  Good job!"
end