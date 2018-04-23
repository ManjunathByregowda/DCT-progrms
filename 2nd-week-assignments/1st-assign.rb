require 'httparty'
require 'json'
puts "enter the name of the city "
city = gets.chomp
url = "http://api.openweathermap.org/data/2.5/forecast?q=#{city}&appid=a8acf56360b2ba5ff1bd05d08a1e499c&units=metric"
response = HTTParty.get(url)
result = JSON.parse(response.body)
i = 0
result.each do |key,value|
	if key == "list"
		while i < 40
			date = result[key][i]["dt_txt"]
			tempr = result[key][i]["main"]["temp"]
			puts  "The date is: #{date} and  Temprature is: #{tempr}"
			i+=1
		end
	end
end