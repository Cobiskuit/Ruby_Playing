#Code provided by Reddit user 0x0dea (https://www.reddit.com/user/0x0dea)

guess, win = 0, rand(1..10)

until guess == win
  guess = gets.to_i
  puts ['You win! Woo!', 'Too high.', 'Too low.'][guess <=> win]
end
