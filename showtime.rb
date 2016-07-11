Fighters = []
#Intro
puts "\nSubmit your ticket 🎫  to Enter into the Arena! 🕋"
print "\nPress Enter to Submit your 🎫"
enter = gets.chomp
  system("clear")

puts "\n🗣 WELCOME TO THE FIRST OFFICIAL MMA vs BOXING MATCH IN HISTORY!!! 📚" #Title
puts "~" * 60
print "\n             ***FLOYD 🇺🇸  MAYWEATHER*** \n                       vs \n              ***CONOR 🇮🇪  MCGREGOR***\n\n" #Fighters
puts "~" * 60
print "\nPress Enter to Choose a Fighter 👥"
enter = gets.chomp
  system("clear")
#Choose your fighter
valid_fighters = ["1","2"]
begin
print "To Choose your Fighter, Type 1️⃣  or 2️⃣ > "
puts "\n\n1.Floyd Mayweather 🇺🇸 \n2.Conor McGregor  🇮🇪 "
print "\n> "
fighter = gets.chomp #fighter is a string
puts "-" * 60
  system("clear")
end until valid_fighters.include?(fighter)

# if fighter != (1 || 2)
#   return
if (fighter == "1")
  player1 = "FLOYD MAYWEATHER 🇺🇸 "
  player2 = "CONOR MCGREGOR 🇮🇪 "
elsif (fighter == "2")
  player1 = "CONOR MCGREGOR 🇮🇪 "
  player2 = "FLOYD MAYWEATHER 🇺🇸 "
end
# Announcer speaking
puts "-------------RING 🎤  ANNOUNCER-------------"
puts "\n  ***IT'S SHOWTIME #{player1}!***\n" #fighter chosen
puts "-" * 50
print "\nPress Enter to Enter into the Ring 🔳"
enter = gets.chomp
  system("clear")
puts "-------------RING 🎤  ANNOUNCER-------------"
puts "🗣 Good evening and welcome to tonight's boxing match which promises to be SPECIAL in every sense of the word.\n\n"
#Announcer speaking
puts "\nIn the red 🔴  corner, weighing in 145lbs
The Featherweight Champion of the UFC.
The MAN known only as NOTORIOUS...
CONOR MCGREGOR!!!"
puts "(CHEERS From the fans)\n\n"
#Announcer speaking
puts"And in the blue 🔵  corner weighing in at 145lbs
The UNDEFEATED CHAMPION OF THE WORLD...
FLOYD 💰  MAYWEATHER!!! \n"
puts "(CHEERS From the fans)\n\n"
#Announcer speaking
puts "And tonight's prize 🎁  ? MAKING HISTORY!" #Announcer
puts "Let's get ready to RUMBLE!!!🎤"
puts "-" * 40
print "\nPress Enter to Listen to Ref 🕴" #Floyds fans
enter = gets.chomp
  system("clear")
#Ref speaking
puts "------------------- 🕴 REF  -------------------"
puts "I want a good clean fight between you two.
Nothing below the waist,
Good luck to you both.
Touch Gloves!\n"
print "\nPress Enter to Touch Gloves 👊🏽"
enter = gets.chomp
"\n(bell rings)\n 🛎 DING! DING! DING! 🛎 "
  system("clear")
#Fighting opponent
moves = ["Jab","Uppercut","Haymaker"]
moves2 = [1,2,3]
p2 = moves2.sample

points = 0
points2 = 0
rounds = 0
while rounds <= 2
  puts "~" * 60
  puts "\n#{player1} It's your turn, type one of the moves!"
  puts moves.join(" ")
  print "Enter move > "
  p1choice = gets.chomp.capitalize
    system("clear")
  puts "~" * 60
#Round 1
  case p1choice
  when "Jab" # Move 1
    puts "\n#{player1} Nice Jab! 👊🏽"
    points += 1
    print "\nPress Enter to See Opponents Move"
    enter = gets.chomp
      system("clear")
  case p2
      when 1
      puts "\n#{player2} throws a Jab"
        points2 += 1
      when 2
        puts "\n#{player2} throws a Uppercut"
        points2 += 2
      when 3
      puts "\n#{player2} throws a Haymaker"
        points2 += 3
    end

  when "Uppercut" # Move 2
    puts "\n#{player1} Smooth Uppercut! 💪🏽"
      points += 2
      print "\nPress Enter to see opponents move"
      enter = gets.chomp

  case p2
      when 1
        puts "\n#{player2} throws a Jab"
        points2 += 1
      when 2
        puts "\n#{player2} throws a Uppercut"
        points2 += 2
      when 3
        puts "\n#{player2} throws a Haymaker"
        points2 += 3
      end

  when "Haymaker" # Move 3
    puts "\n#{player1} with the Haymaker! ✊🏽"
      points += 3
      print "\nPress Enter to see opponents move"
      enter = gets.chomp

  case p2
    when 1
      puts "\n#{player2} throws a Jab"
      points2 += 1
    when 2
      puts "\n#{player2} throws a Uppercut"
      points2 += 2
    when 3
      puts "\n#{player2} throws a Haymaker"
      points2 += 3
    end

  else
    puts "That's not a legal move, hit missed!"
     sleep(1)

  case p2
    when 1
      puts "\n#{player2} throws a Jab"
      points2 += 1
    when 2
      puts "\n#{player2} throws a Uppercut"
      points2 += 2
    when 3
      puts "\n#{player2} throws a Haymaker"
      points2 += 3
      end
  end
    rounds += 1
end
print "\nPress Enter to see the Winner!"
enter = gets.chomp
  system("clear")

puts "~" * 60
puts "\n            Your Current Overall Score = #{points}" # Player 1's score
  sleep(1)
puts "          #{player2} Overall Score = #{points2}\n\n" # Player 2's score
  sleep(1)
puts "~" * 60

  if points > points2
    puts "\n👑         #{player1} IS THE CHAMPION!!!\n" * 10
  elsif points == points2
    puts "\n          AMAZING FIGHT, RESULT IS A TIE!!!⚔"
  else
    puts "\n👑          #{player2} WINS, SORRY SUCKAAA!!!\n" * 10
  end

puts "~" * 60
