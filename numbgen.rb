comp_numb = 1 + rand(10)
puts "I'm thinking of a number between 1 and 10."
puts "What is it?"
guess = gets.to_i

while guess != comp_numb
    if guess > comp_numb
        puts "That's too high! Try again!"
        guess = gets.to_i
    end

    if guess < comp_numb
        puts "That's too low! Try again!"
        guess = gets.to_i
    end
end

if guess == comp_numb
    puts "Hey, you got it! Good for you!"
end
