def casino_draw
puts "                            ()_                                 	"
puts "                            || `-._.-.							"
puts "                            ||_    .'								"
puts "                            || `-.'								"
puts "       +                    ||                    +				"
puts "       |                    ||                    |				"
puts "      / \\               _,,.||.__                / \\			"
puts "     /___\\           ,-'         `-.            /___\\ 			"
puts "  ___|===|_________,'               `.__________|===|_______		"
puts " /   |===|        /      WYNCODE      \\         |===|       \\	"
puts "/________________/       CASINO        \\_____________________\\	"
puts"| -----+ +-----+  |`-._              _.-'|  +-----+ +-----+   |	"
puts"| ||_|_|| ||_|_||  | |. `'----------'' .| |  ||_|_|| ||_|_||  |	"
puts"| ||_|_|| ||_|_||  | |:  | ||    :| |  :| |  ||_|_|| ||_|_||  |	"
puts"| _________________ | |:__| ||____:| |__:| |  ________________|	"
puts"|_____________________________________________________________|	"
end
casino_draw

def blank_line
	puts " "
end

blank_line
#Bienvenida
puts "** Welcome to the Wyncode Casino!"
puts "** What is your name?"
player_name=gets.chomp.upcase.to_s
blank_line

puts"** #{player_name}, how much money do you want to add to your Casino Card?"
your_balance=gets.chomp.to_i

	until your_balance > 0.0
	puts "** We are sorry #{player_name} that is not a valid amount..."
	puts "** Please add a 'full dollar' amount and try again"
	your_balance=gets.chomp.to_i
end
blank_line

#Priniting the casino card
def casino_card(player_name_c, your_balance_c)
puts "** Great! Here is your casino card #{player_name_c}"
blank_line
puts "_"*40
puts "|"+ " ** WYNCODE CASINO CASH CARD **" + " "*7 +"|"
puts "|" + " "*38 + "|"
puts "| NAME ON CARD:"+ " #{player_name_c}" + " "*(23 - player_name_c.length.to_i ) + "|"
puts "| YOUR CURRENT BALANCE:"+ " $#{your_balance_c}" + " "*(14 - your_balance_c.to_s.length) + "|"
puts "|_" + "_"*36 + "_|"
end
casino_card(player_name, your_balance)


#Want to play?
blank_line
puts "** Now #{player_name}, do you want to play (Y/N)?"
play_or_not = gets.chomp.downcase

until play_or_not.include?("n")
blank_line
puts "** Great, let's play!"
puts "** Let's see the cash balance in your card?"
puts "** OK #{player_name}, the balance in your card is $#{your_balance}"
blank_line
puts "================== NOW LET'S PLAY!! =================="
blank_line
puts "** Chose a number between 1 and 10"
your_number=gets.chomp
blank_line
puts "** You chose #{your_number}...Cool number, good luck!"
puts "** Now The House will pick a number..."

#the house number is a random number between 1-10
the_house_number = rand(1..10)
blank_line
puts "** The House number is: #{the_house_number}"
blank_line
puts "================== RULES OF THE GAME =================="
blank_line
puts "** The game is simple:"
puts "** We will flip the roulette and get a number"
puts "** If you are closer to the number: YOU win! If the House is closer, House wins!"
blank_line
#loop to see if "rules of the game" are clear
puts "** Now, are you ready to bet? (Y/N)"
ready = gets.chomp.downcase
until ready.include?("y")
puts "** Ohhh...OK, please ask me any additional questions you have"
puts "** Are you clear now #{player_name}? (Y/N)"
ready = gets.chomp.downcase
end

#now player place bet
blank_line
puts "** Great! Now place your bet: "
puts "** Remember that your card balance is $#{your_balance}"
blank_line
bet_amount = gets.chomp.to_i
blank_line
until bet_amount >0 and bet_amount<=your_balance
puts "** Mmmm...that is not a valid bet. Please check your card balance and place your bet again"
bet_amount = gets.chomp.to_i
end
blank_line
puts "** Perfect, you just bet $#{bet_amount}"

#spinning the wheel!
blank_line
puts "================== NOW LET'S SPIN THE WHEEL! =================="
blank_line
puts "**...And the wheel is spinning..."
puts "**...almost stop..."
the_number_is = rand(1..10)
puts "** And...stoped!"
puts "** The lucky number is: #{the_number_is} !!"

#who won?
blank_line
puts "==================     LET'S SEE WHO WON     =================="
blank_line
player_dif = (the_number_is-your_number.to_i).abs
house_dif = (the_number_is-the_house_number.to_i).abs

if player_dif < house_dif
  puts "** YOU WON $#{bet_amount}!"
  puts "** Your new balance is #{your_balance+=bet_amount}"
elsif player_dif > house_dif
  puts "** Oohhh...You loose $#{bet_amount}!"
  puts "** Your new balance is #{your_balance-=bet_amount}"
elsif player_dif = house_dif
  puts "** You tied! Keep your $#{bet_amount}"
  puts "** Your new balance is #{your_balance}"
end
blank_line

#play again?
puts "Do you want to play again (Y/N)?"
play_again = gets.chomp.downcase

unless play_again.include?("n")
redo

end

end

puts "OK, we'll play next time #{player_name}. Good bye!"
casino_draw

###### Cool methods to use!

# def draw_line
# 	puts "="*20 + " chapter xx " + "="*20
# 	puts "="*5 + "#{player_name}" + "="*5
# 	puts "="*5 + "$#{your_balance}" + "="*5
# 	end
# puts draw_line
#
# def draw_image
# 	puts "('')"
# end
# puts draw_image
#
