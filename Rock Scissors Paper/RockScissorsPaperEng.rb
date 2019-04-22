# Simple game "Rock, Scissors, Paper"
# Copyright (c) 2019 Aleksei Roznovan
# Most rights reserved... :)

loop do

	print "(R)ock, (S)cissors, (P)aper? Choose! "
	answer = gets.strip.capitalize

	if answer == "R"
		user_choice = :rock
	elsif answer == "S"
		user_choice = :scissors
	elsif answer == "P"
		user_choice = :paper
	else
		puts "Can't understand what you want, sorry..."
		exit
	end

	arr = [:rock, :scissors, :paper]
	computer_choice = arr.sample       # and you can do it - computer_choice = arr[rand(0..2)]

	if computer_choice == user_choice
		puts "Nobody wins"
	elsif computer_choice == :rock && user_choice == :scissors
		puts "Computer won!"
	elsif computer_choice == :scissors && user_choice == :paper
		puts "Computer won!"
	elsif computer_choice == :paper && user_choice == :rock
		puts "Computer won!"
	else
		puts "You won!"
	end

end
