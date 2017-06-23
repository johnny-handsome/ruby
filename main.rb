class SeaBattle
	def initialize
		@arr = ["*","*","*","*","*","*","*","*","*","*"]
	end
	def show 
		for i in @arr.length-1
			print @arr[i]
		end
	end
	def gamee
		print "Enter the location of ship (from 1 to 10):"
		strLocationShip = gets.to_i
		@arr[strLocationShip-1]="O"
		show 
		puts "Your ship is ready to fight!"
		for i in 0..@arr.length-1
			print "Sot to thrill (from 1 to 10):"
			strShootLocation = gets.to_i
			if strLocationShip == strShootLocation
				puts "You are fuckin awesome! Win!!!!"
				return
			else
				@arr[strShootLocation-1]="X"
				show 
				puts "Try one time more,bro"
			end
		end
		print "lol"
	end
end
output = SeaBattle.new
output.gamee






























