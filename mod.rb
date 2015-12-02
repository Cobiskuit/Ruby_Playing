
puts "Let's divide some numbers!
Please enter a number"
a = gets.to_i
puts "Please enter another number"
b = gets.to_i

def divide(a,b)
  d = a / b
  return "#{a} divided by #{b} is #{d}"
end

def mod(a,b)
  c = a % b
  return "The remainder of #{a} divided by #{b} is #{c}"
end

puts divide(a,b)
puts mod(a,b)
