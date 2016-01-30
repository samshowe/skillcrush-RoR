puts "Give me a number: "
number_one = gets.to_i
step_one = number_one + 5
step_two = step_one * 2
step_three = step_two - 4
step_four = step_three / 2
answer = step_four - number_one
puts "The answer is #{answer} "
