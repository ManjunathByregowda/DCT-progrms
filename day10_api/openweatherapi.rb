require 'httparty'
require 'JSON'
puts "plaese eneter the nameof he city"
baseurl="http://api.openweathermap.org/data/2.5/weather?"
place=gets.chomp
appid="APPID=5746d7d3fae65c8c8aa28b2efc57f198"
units="metrics"
url="#{baseurl}q=#{place}?&#{appid}&units=#{units}"
puts "#{url}"
response=HTTParty.get(url)
puts response
puts response.class
   result =JSON.parse(response.body)#json is there in the method respone
#  response.body.classgives us the string class
#line14 hen parsed gives us the hash
binding.pry
puts"the result of the city #{place} is #{result} and the temperature is #{result["main"]["temp"]} and #{result["weather"][0]["description"]}"
