# Простая игра "Камень, Ножницы, Бумага"
# Copyright (c) 2019 Алексей Рознован
# Большинство прав защищено... :)

loop do

	print "Камень (R), Ножницы (S) или Бумага (P)? Выбирай! "
	answer = gets.strip.capitalize

	if answer == "R"
		user_choice = :rock
	elsif answer == "S"
		user_choice = :scissors
	elsif answer == "P"
		user_choice = :paper
	else
		puts "Не могу понять чего вы хотите..."
		exit
	end

	arr = [:rock, :scissors, :paper]
	computer_choice = arr.sample

	if computer_choice == user_choice
		puts "Ничья!"
	elsif computer_choice == :rock && user_choice == :scissors
		puts "Победил компьютер!"
	elsif computer_choice == :scissors && user_choice == :paper
		puts "Победил компьютер!"
	elsif computer_choice == :paper && user_choice == :rock
		puts "Победил компьютер!"
	else
		puts "Ты победил!"
	end

end