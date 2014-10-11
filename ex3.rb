# + plus
# - minus
# / slash
# * asterisk
# % percent
# < less-than
# > greater-than
# <= less-than-equal
# >= greater-than-equal

puts "I will now count my chickens:"

# with mathrules: 25 + (30 / 6) = 25 + 5 = 30
puts "Hens", 25 + 30 / 6
# with mathrules: 100 - ((25 * 3)%4) = 100 - (75 % 4) = 100 - 3 = 97
puts "Roosters", 100 - 25 * 3 % 4	


puts "Now I will count the eggs:"

# with mathrules: 3+2+1-5+(4%2)-(1/4)+6 = 3+2+1-5+0-0.25+6= 6.75 or 7 without floating point
puts 3 + 2 + 1 - 5 + 4 % 2 - 1.0 / 4.0 + 6

puts "Is it true that 3 + 2 < 5 - 7?"

# with mathrules: 5 < -2 --> false
puts 3 + 2 < 5 - 7

# = 5
puts "What is 3 + 2?", 3 + 2
# = -2
puts "What is 5 - 7?", 5 - 7

puts "Oh that's why it's false."

puts "How about some more."

puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= -2