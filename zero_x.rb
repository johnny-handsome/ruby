class ZeroAndX
	def initialize
		@arr = [["*","*","*"],["*","*","*"],["*","*","*"]]
	end
	def show
		for i in 0..@arr.length-1
			for v in 0..@arr.length-1
    		print @arr [i][v]
			end
			print "\n"
		end
	end
	def winner
		#горизонталі
		if @arr[0].count('X') == 3 #верхня горизонталь для першого юзера
			print "WIIINNNNNN!!\n"
		elsif @arr[1].count('X') == 3 #середня горизонталь для першого юзера
			print "WIIINNNNNN!!\n"
		elsif @arr[2].count('X') == 3 #нижня горизонталь для першого юзера
			print "WIIINNNNNN!!\n"
		elsif @arr[0].count('O') == 3 #верхня горизонталь для другого юзера
			print "WIIINNNNNN!!\n"
		elsif @arr[1].count('O') == 3 #середня горизонталь для другого юзера
			print "WIIINNNNNN!!\n"
		elsif @arr[2].count('O') == 3 #нижня горизонталь для другого юзера
			print "WIIINNNNNN!!\n"
		#діагоналі
		elsif @arr[0][0] == "X" and @arr [1][1] == "X" && @arr [2][2] == "X" #діагональ зліва-направо для першого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][0] == "O" and @arr [1][1] == "O" && @arr [2][2] == "O" #діагональ зліва-направо для другого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][2] == "X" and @arr [1][1] == "X" && @arr [2][0] == "X" #діагональ справа-наліво для першого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][2] == "O" and @arr [1][1] == "O" && @arr [2][0] == "O" #діагональ справа-наліво для другого юзера
			print "WINNNNNNNNNNNN!!!!\n"
			#вертикалі
		elsif @arr[0][0] == "X" and @arr [1][0] == "X" && @arr [2][0] == "X" #перша зліва вертикаль для першого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][0] == "O" and @arr [1][0] == "O" && @arr [2][0] == "O" #перша зліва вертикаль для другого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][1] == "X" and @arr [1][1] == "X" && @arr [2][1] == "X" #вертикаль посередині для першого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][1] == "O" and @arr [1][1] == "O" && @arr [2][1] == "O" #вертикаль посередині для другого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][2] == "X" and @arr [1][2] == "X" && @arr [2][2] == "X" #вертикаль справа для першого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		elsif @arr[0][2] == "X" and @arr [1][2] == "X" && @arr [2][2] == "X" #вертикаль справа для другого юзера
			print "WINNNNNNNNNNNN!!!!\n"
		else
			print "Equal fight!\n"
		end
	end
	def gamee
		print "Game start!\n"
		for i in 0..5
			print "User 1, your step:"
			userOneStr = gets.gsub!(/\s+/, '')
			userOneFirstChar = userOneStr[0].to_i
			userOneSecondChar = userOneStr[1].to_i
			@arr[userOneFirstChar-1][userOneSecondChar-1]="X"
			show
			winner
			print "User 2, your step:"
			userTwoStr = gets.gsub!(/\s+/, '')
			userTwoFirstChar = userTwoStr[0].to_i
			userTwoSecondChar = userTwoStr[1].to_i
			@arr[userTwoFirstChar-1][userTwoSecondChar-1]="O"
			show
			winner
		end
	end
end
output = ZeroAndX.new
output.gamee