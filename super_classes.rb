class Career
	def set_name=(career_name)
		@name = career_name
	end

	def get_name
		return @name
	end

	def set_location=(location)
		@location = location
	end

	def get_location
		return @location
	end
end

class Skill < Career	
	def set_skill=(skill)
		@skill = skill
	end

	def get_skill
		return @skill
	end
end

class Salary < Career	
	def set_salary=(salary)
		@salary = salary
	end

	def get_salary
		return @salary
	end
end

my_career = Career.new
my_career.set_name= "Rails Developer"
career = my_career.get_name
my_skill = Skill.new
my_skill.set_name= "programing"
skill = my_skill.get_name

puts "I am a #{career} and I spend my day #{skill}."
