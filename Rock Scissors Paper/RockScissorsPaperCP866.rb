# encoding: cp866

# ����� ��� "������, �������, �㬠��"
# Copyright (c) 2019 ����ᥩ ��������
# ����設�⢮ �ࠢ ���饭�... :)

loop do

	print "������ (R), ������� (S) ��� �㬠�� (P)? �롨ࠩ! "
	answer = gets.strip.capitalize

	if answer == "R"
		user_choice = :rock
	elsif answer == "S"
		user_choice = :scissors
	elsif answer == "P"
		user_choice = :paper
	else
		puts "�� ���� ������ 祣� �� ���..."
		exit
	end

	arr = [:rock, :scissors, :paper]
	computer_choice = arr.sample

	if computer_choice == user_choice
		puts "�����!"
	elsif computer_choice == :rock && user_choice == :scissors
		puts "������� ��������!"
	elsif computer_choice == :scissors && user_choice == :paper
		puts "������� ��������!"
	elsif computer_choice == :paper && user_choice == :rock
		puts "������� ��������!"
	else
		puts "�� �������!"
	end

end