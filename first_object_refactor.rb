class Baby

	attr_accessor :baby_name, :baby_age

	def giggle
		return "hehehe"
	end
end

my_baby = Baby.new
my_baby.baby_name= "Ruby"
baby_name = my_baby.baby_name
puts "My baby #{baby_name} likes to giggle like this, #{my_baby.giggle}. And I love it!"
