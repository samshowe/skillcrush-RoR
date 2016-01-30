puts "Give me a number: "
number = gets.to_i

def always_three(number)
	number = (((((number + 5)*2)-4)/2)-number)
	puts "The number is always #{number} "
end

always_three(4)
