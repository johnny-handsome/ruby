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
			return true
		elsif @arr[1].count('X') == 3 #середня горизонталь для першого юзера
			return true
		elsif @arr[2].count('X') == 3 #нижня горизонталь для першого юзера
			return true
		elsif @arr[0].count('O') == 3 #верхня горизонталь для другого юзера
			return true
		elsif @arr[1].count('O') == 3 #середня горизонталь для другого юзера
			return true
		elsif @arr[2].count('O') == 3 #нижня горизонталь для другого юзера
			return true
		#діагоналі
		elsif @arr[0][0] == "X" and @arr [1][1] == "X" and @arr [2][2] == "X" #діагональ зліва-направо для першого юзера
			return true
		elsif @arr[0][0] == "O" and @arr [1][1] == "O" and @arr [2][2] == "O" #діагональ зліва-направо для другого юзера
			return true
		elsif @arr[0][2] == "X" and @arr [1][1] == "X" and @arr [2][0] == "X" #діагональ справа-наліво для першого юзера
			return true
		elsif @arr[0][2] == "O" and @arr [1][1] == "O" and @arr [2][0] == "O" #діагональ справа-наліво для другого юзера
			return true
			#вертикалі
		elsif @arr[0][0] == "X" and @arr [1][0] == "X" and @arr [2][0] == "X" #перша зліва вертикаль для першого юзера
			return true
		elsif @arr[0][0] == "O" and @arr [1][0] == "O" and @arr [2][0] == "O" #перша зліва вертикаль для другого юзера
			return true
		elsif @arr[0][1] == "X" and @arr [1][1] == "X" and @arr [2][1] == "X" #вертикаль посередині для першого юзера
			return true
		elsif @arr[0][1] == "O" and @arr [1][1] == "O" and @arr [2][1] == "O" #вертикаль посередині для другого юзера
			return true
		elsif @arr[0][2] == "X" and @arr [1][2] == "X" and @arr [2][2] == "X" #вертикаль справа для першого юзера
			return true
		elsif @arr[0][2] == "X" and @arr [1][2] == "X" and @arr [2][2] == "X" #вертикаль справа для другого юзера
			return true
		end
	end
	def gamee
		print "Game start!\n"
		for i in 0..4
			print "User 1, your step:"
			userOneStr = gets.gsub!(/\s+/, '')
			userOneFirstChar = userOneStr[0].to_i
			userOneSecondChar = userOneStr[1].to_i
			@arr[userOneFirstChar][userOneSecondChar]="X"
			show
			winner
			if winner == true
				print "User 1, you are fuckin WINNNNNNNNNNNNNN!!\n"
				break
			end
			print "User 2, your step:"
			userTwoStr = gets.gsub!(/\s+/, '')
			userTwoFirstChar = userTwoStr[0].to_i
			userTwoSecondChar = userTwoStr[1].to_i
			@arr[userTwoFirstChar][userTwoSecondChar]="O"
			show
			winner
			if winner == true
				print "User 2, you are fuckin WINNNNNNNNNNNNNN!!\n"
				break
			end
		end
		print "Equal fight!\n"
	end
end
output = ZeroAndX.new
output.gamee