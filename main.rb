class Message
	def message
		print 'Random num'
			str = gets
			str = str.to_f
			case str
				when 1
					puts 'got the job'
				when 2
					puts 'i m in trouble'
				when 3
					puts 'fuck with many women'
				else
					for i in 1..10
						puts 'hui'
				end
end
end
end
messageOutput = Message.new
messageOutput.message
