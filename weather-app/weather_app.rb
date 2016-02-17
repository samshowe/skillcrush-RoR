require 'weatherboy'

puts "To find out the weather in your area enter your zipcode"
location = gets.chomp.to_i


def weather(location)
	weatherboy = Weatherboy.new(location)
	current_conditions = weatherboy.current

	puts current_conditions.weather
	if  current_conditions.weather == "Sunny"
		puts "it's 85 degrees and sunny!"
	elsif current_conditions.weather == "Cloudy"
		puts "It's 55 degrees and crazy cloudy"
	elsif current_conditions.weather == "Rainy"
		puts "It's 60 degrees and crazy rainy"
	elsif current_conditions.weather == "Snowy"
		puts "It's 32 degrees and super snowy"
	elsif current_conditions.weather == "Clear"
		puts "All clear!"
	else
		puts "Who knows!"
	end
end

def forecast(location)
	weatherboy = Weatherboy.new(location)
	puts "The weather for the next 5 days will be: "
	for day in 0..4
		forecast_for_day = weatherboy.forecasts[day]
		puts forecast_for_day.low_f + "/" + forecast_for_day.high_f + "   " + forecast_for_day.conditions
	end
end

weather(location)
forecast(location)






		
