
puts "Hey there! What's your name?"
name = gets.chomp

puts "Well, hello there, #{name}!
Would you like to see your name backwards? (yes or no)"
answer = gets.chomp.downcase

case answer
when "yes"
  puts "Okay! Here is your name backwards: #{name.reverse}"
when "no"
  puts "Okay, no worries."
else
  puts "Please type yes or no next time!"
end
