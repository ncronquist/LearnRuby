# Chapter 7 Code Exercises

# 7.1 Comparison Methods

puts 1 > 2 # => false
puts 1 < 2 # => true
puts ''

puts 5 >= 5 # => true
puts 5 <= 4 # => false
puts ''

puts 1 == 1 # => true
puts 2 != 1 # => true
puts ''

puts 'cat' < 'dog' # => true
puts ''

# Capital letters come before lowercase letters so the Ruby compiler will think 'Xander' comes before 'apple'
# Use .downcase to do word comparisons

puts 'bug lady'          < 'Xander'          # => false
puts 'bug lady'.downcase < 'Xander'.downcase # => true
puts ''

puts 2 < 10 # => true
puts '2' < '10' # => false
puts '02' < '10' # => true
# Since the 1 character comes before the 2 character, it shows 10 as being lower
puts ''

# 7.2 Branching
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
  puts 'What a lovely name!'
end
puts ''

puts 'I am a fortune-teller. Tell me your name:'
name = gets.chomp

if name == 'Chris'
  puts 'I see great things in your future.'
else
  puts 'Your future is...oh my! Look at the time!'
  puts 'I really have to go, sorry!'
end
puts ''

puts 'Hello, and welcome to seventh grade English.'
puts 'My name is Mrs. Gabbard. And your name is....?'
name = gets.chomp

if name == name.capitalize
  puts 'Plase take a seat, ' + name + '.'
else
  puts name + '? You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph! Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end
puts ''

# 7.3 Looping

input = ''
while input != 'bye'
  puts input
  input = gets.chomp
end
puts 'Come again soon!'
puts ''

# THIS IS NOT A REAL PROGRAM
# INFINITE LOOP
# while just_like_go_forever
#   input = gets.chomp
#   puts input
#   if input == 'bye'
#     stop_looping
#   end
# end
# puts "Come again soon!"

while 'Spike' > 'Angel'
  input = gets.chomp
  puts input
  if input == 'bye'
    break
  end
end
puts 'Come again soon!'
puts ''

while true
  input = gets.chomp
  puts input
  if input == 'bye'
    break
  end
end
puts 'Come again soon!'
puts ''

# 7.4 A little Bit of Logic

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
  puts 'What a lovely name!'
else
  if name == 'Katy'
    puts 'What a lovely name!'
  end
end
puts ''

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris'
  puts 'What a lovely name!'
elsif name == 'Katy'
  puts 'What a lovely name!'
end
puts ''

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Chris' || name == 'Katy'
  puts 'What a lovely name!'
end
puts ''

i_am_chris = true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_chris && i_like_beer # => true
puts i_like_beer && i_eat_rocks # => false
puts i_am_purple && i_like_beer # => false
puts i_am_purple && i_eat_rocks # => false
puts
puts i_am_chris || i_like_beer # => true
puts i_like_beer || i_eat_rocks # => true
puts i_am_purple || i_like_beer # => true
puts i_am_purple || i_eat_rocks # => false
puts
puts !i_am_purple # => true
puts !i_am_chris # => false
puts

while true
  puts 'What would you like to ask C to do?'
  request = gets.chomp

  puts 'You say, "C, please ' + request + '"'

  puts 'C\'s response:'
  puts '"C ' + request + '."'
  puts '"Papa ' + request + ', too."'
  puts '"Moma ' + request + ', too."'
  puts '"Ruby ' + request + ', too."'
  puts '"Nono ' + request + ', too."'
  puts '"Emma ' + request + ', too."'

  if request == 'stop'
    break
  end
end
