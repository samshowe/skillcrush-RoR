require 'rubygems'
require 'twilio-ruby'

account_sid = "AC5c34132e3bed4267b5a382de5b38b1a9"
auth_token = "2d514bca1da3e76ae66cb1f41bed246c"

@client = Twilio::REST::Client.new account_sid, auth_token

puts "Ask me a yes or no question?"
reply = gets.chomp

magic = ["It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely", "You may rely on it",
"As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
"Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no",
"Outlook not so good", "Very doubtful"]
answer = magic[Random.rand(0..19)]

puts answer

message = @client.account.messages.create ({
	:from => "+19093216485",
	:to => "+19094373578",
	:body => "#{answer}"
})

