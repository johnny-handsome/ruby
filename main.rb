class SeaBattle
	def SeaBattle.printMes1
		print "Enter the location of ship (from 1 to 10):"
		strLocationShip = gets.to_i
		arr = ["*","*","*","*","*","*","*","*","*","*"].join()
		arr[strLocationShip-1]="O"
		puts "#{arr}"
		puts "Your ship is ready to fight!"
		print "Shoot to thrill (from 1 to 10):"
		strShootLocation = gets.to_i
		if strLocationShip == strShootLocation
			puts "You are fuckin awesome! Win!!!!"
		else
			arr[strShootLocation-1]="X"
			puts "#{arr}"
			puts "Try one time more,bro"
		end
	end
end
SeaBattle.printMes1
