require 'httparty'
require 'JSON'
puts "enter the name of the person hose gender has to be found"
name=gets.chomp
url="http://gender-api.com/get?name=#{name}
&key=pRPLCejozFwCHFbVCR"
 response= HTTParty.get(url)
 puts response.class
 puts response.body#returns json data of the strin class
 puts response.body.class
 result =JSON.parse(response.body)
 puts result.class
 puts result
 puts "Gender of #{name} is #{result["gender"]}" 

