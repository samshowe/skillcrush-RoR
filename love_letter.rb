puts "Have you been good while mommy's been working? Answer y/n: "
answer = gets.chomp.downcase

while (answer == "n")
	puts "I love you anyway. But could you be good for mommy now? Answer y/n."
	answer = gets.chomp.downcase
end
