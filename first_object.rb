class Baby

	def set_name=(baby_name)
		@name = baby_name
	end

	def get_name
		return @name
	end

	def set_age= (baby_age)
		@age = baby_age
	end
	
	def get_age
		return @age
	end

	def giggle
		return "hehehe"
	end
end

my_baby = Baby.new
my_baby.set_name= "Ruby"
baby_name = my_baby.get_name
puts "My baby #{baby_name} likes to giggle like this, #{my_baby.giggle}. And I love it!"
