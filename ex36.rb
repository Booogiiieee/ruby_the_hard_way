def start_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    money_way
  elsif choice == "straight"
    snake_room
  else
    puts "I don't know which way."
    start_decision
  end
end

def start
  puts "You wake up. It's dark. You don't know where you are... Your head hurts..."
  puts "In front of you is a corridor. Slowly you walk straight on."
  puts "You reach two doors: one to the \"left\" and one \"straight\" on."
  puts "Which one do you take?"
  
  start_decision
end

def snake_room_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "fight"
    dead_way_from_snake
  elsif choice == "stick"
    stick_way_from_snake
  else
    puts "I don't know what to do."
    snake_room_decision
  end
end

def snake_room
  puts "Oh, there's a snake. Is it poisonous? Hmm... "
  puts "In the left corner there is a stick. On the left there is also a door."
  puts "If you take the stick you maybe could reach the door."
  puts "You also could fight against the snake with your hands like a real man."
  puts "With clever moving while fighting you could reach the door behind the snake."
  puts "Which path do you choose? \"fight\" or \"stick\"?"
  
  snake_room_decision
end

def money_way_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "take"
   @itembag.push('money')
   #@itembag.each {|inventar| puts "Itembag: ", inventar}
    lamp_lighter_way
  elsif choice == "leave"
    lamp_lighter_way
  else
    puts "I can't do that."
    money_way_decision
  end
end

def money_way
  puts "What's that? There's a bunch of money on the floor."
  puts "Do you \"take\" it or \"leave\" it?"
  
  money_way_decision
end

def dead_way_from_snake
  puts "Well done. You punched the snake in the face and sneaked trough the door behind her."
  puts "The only path is to go this way to the left. You can't go back. The snake would be angry and eat you."
  puts "You finally reach a door. You open it and go inside the room."
  puts "As soon as the door closes, the ground under your feet changes into deadly spikes."
  puts "Game over!"
  exit(0)
end

def startagain_or_snake_decision
  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    snake_room
  elsif choice == "start"
    start
  else
    puts "I can't do that."
    startagain_or_snake_decision
  end
end

def startagain_or_snake
  puts "You go further forward... oh wait..."
  puts "Oh snap. I was here once before. I can go \"left\" to face the snake or \"start\" the game again."
  puts "What do you choose?"
  
  startagain_or_snake_decision
end
    
def money_way_wrong_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "take"
    @itembag.push('money')
    startagain_or_snake
  elsif choice == "leave"
    startagain_or_snake
  else
    puts "I don't know what to do."
    money_way_wrong_decision
  end
end

def money_way_wrong
  puts "On the way forward there's just one door to the left. You go through it."
  puts "What's that? There's a bunch of money on the floor."
  puts "Do you \"take\" it or \"leave\" it?"
  
  money_way_wrong_decision
end

def lamp_lighter_way_wrong_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "lamp"
    @itembag.push('lamp')
    money_way_wrong
  elsif choice == "lighter"
    @itembag.push('lighter')
    money_way_wrong
  else
    "I can't do that."
    lamp_lighter_way_wrong_decision
  end
end

def lamp_lighter_way_wrong
  puts "Oh what a lucky day. There's a \"lamp\" and a \"lighter\" on the floor."
  puts "Which one do you take?"
  
  lamp_lighter_way_wrong_decision
end

def stick_way_from_snake_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    lamp_lighter_way_wrong
  elsif choice == "straight"
    from_lighter_or_fire_or_snackestick_way
  else
    puts "I don't know where to go."
    stick_way_from_snake_decision
  end
end

def stick_way_from_snake
  puts "You took the stick and moved slowly to the door. The snake was feared and didn't attack you. Lucky bastard..."
  puts "You opened the door and sneaked through it. You go straight on. There's another door to open."
  puts "You're in front of two other doors. One to the \"left\" and one \"straight\"."
  puts "Which one do you take?"
  
  stick_way_from_snake_decision
end

def lamp_lighter_way_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "lamp"
    @itembag.push('lamp')
    from_lamp_or_lighter_way
  elsif choice == "lighter"
    @itembag.push('lighter')
    from_lamp_or_lighter_way
  else
    puts "I don't know what to take."
    lamp_lighter_way_decision
  end
end

def lamp_lighter_way
  puts "There's a door. You open it and go through it. Further there's just one way."
  puts "You go to the right."
  puts "Oh what a lucky day. There's a \"lamp\" and a \"lighter\" on the floor."
  puts "Which one do you take?"
  
  lamp_lighter_way_decision
end

def from_lamp_or_lighter_way_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    from_lighter_or_fire_or_snackestick_way
  elsif choice == "right"
    snake_room_wrong
  else
    puts "I can't go this way."
    from_lamp_or_lighter_way_decision
  end
end

def from_lamp_or_lighter_way
  puts "Uh, two doors. One to the \"left\" and one to the \"right\". Which one do you take?"
  
  from_lamp_or_lighter_way_decision
end

def snake_room_wrong_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    dead_way_from_snake
  elsif choice == "fight"
    puts "I told you. But you won't listen. You are dead now. Who fights a snake..."
    exit(0)
  else
    puts "I can't do that."
    snake_room_wrong_decision
  end
end

def snake_room_wrong
  puts "You slowly open the door. Oh my god there's a snake. She's lying on a stick... and in front of a door to the right."
  puts "I think you have to either go to the door on the \"left\" or \"fight\" and die."
  
  snake_room_wrong_decision #hmm false
end

def from_lighter_or_fire_or_snackestick_way_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    on_the_hippo_way
  elsif choice == "straight"
    fire_lighter_room
  else
    "I don't know where to go."
    from_lighter_or_fire_or_snackestick_way_decision
  end
end

def from_lighter_or_fire_or_snackestick_way
  puts "Oh well, another two doors. Another hard decision to make."
  puts "Do you go \"left\" or \"straight\"?"
  
  from_lighter_or_fire_or_snackestick_way_decision
end

def fire_lighter_room
  puts "Oh you don't even see your own hand because its so dark in this room."
  puts "You definitely want to turn on you light source."
  if @itembag.include?('lamp')
    bat_room_lamp
  elsif @itembag.include?('lighter')
    bat_room_lighter
  else
    puts "The darkness makes you crazy. It's not fun to be in the dark. You lost your mind. You are dead!"
    exit(0)
  end
end

def bat_room_lighter_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    old_man_room
  elsif choice == "straight"
    money_way_from_bat
  else
    puts "I can't go there."
    bat_room_lighter_decision
  end
end

def bat_room_lighter
  puts "You put on your lighter. Oh crap. There are thousands of bats on the ceiling."
  puts "But the light from the lighter doesn't wake them up. You see tho other doors."
  puts "One to the \"left\" and one \"straight\". Which one do you take?"
  
  bat_room_lighter_decision
end

def bat_room_lamp
  puts "You put on your lamp. Holy moly... Thousands of bats are on the ceiling."
  puts "The start attacking you."
  puts "You are dead."
  exit(0)
end

def old_man_room
  puts "You walk up the way. There's old man standing there."
  puts "Old man: Do you brought the money with you?"
  
  if @itembag.include?('money')
    puts "You: Yes I did. You want some?"
    puts "Old man: Yes I do."
    puts "You: Here you go."
    puts "Good job son. You win!"
    exit(0)
  else
    puts "You: Nope. Why?"
    puts "Old man: Bad for you. Now I have to kill you."
    puts "You are dead."
    exit(0)
  end
end

def on_the_hippo_way_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    hippo_room
  elsif choice == "straight"
    back_to_start
  else
    "I can't go this way."
    on_the_hippo_way_decision
  end
end

def on_the_hippo_way
  puts "The corridor here starts getting brighter. Oh in front of you two doors appear."
  puts "One to the \"left\" and one \"straight\" on. Which one do you take?"
  
  on_the_hippo_way_decision
end

def hippo_room
  puts "Oh woooow. There's a huge hippo."
  puts "Oh snap. It looks angry... And hungy..."
  puts "Sorry bro. You are hippo-food."
  exit(0)
end

def money_way_from_bat_decision
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "take"
    no_name_room
    @itembag.push('money')
  elsif choice == "leave"
    no_name_room
  else
    puts "I can't do that."
    money_way_from_bat_decision
  end
end

def no_name_room_decision
  print "> "
  choice == $stdin.gets.chomp
  
  if choice == "right"
    dead_way_from_noname
  elsif choice == "left"
    old_man_room
  else
    puts "I can't go this way."
    no_name_room_decision
  end
end

def no_name_room
  puts "You walk into this room. It's totally empty, but there are two doors."
  puts "You can go to the \"right\" or to the \"left\". Which way do you take?"
  
  no_name_room_decision
end

def dead_way_from_noname
  puts "There's a door to go through. Lets do it."
  puts "As soon as the door closes, the ground under your feet changes into deadly spikes."
  puts "Game over."
  exit(0)
end

def money_way_from_bat
  puts "You walk this way and... oh wait. Lucky you. There's money on the floor."
  puts "Do you \"take\" it or \"leave\" it?"
  
  money_way_from_bat_decision
end

def back_to_start
  puts "One way to the left and a door. You open it and sneak through. Surprise."
  puts "What a game! You're back on the start."
  start
end

@itembag = []
start