# Chapter 6 Code Exercises

# 6.0 Methods
# List of methods we've used
# print
# puts
# .to_s
# .to_i
# .to_f
# gets
# .chomp
# + - this is really just the shortcut of .+
# - - this is really just the shortcut of .-
# * - this is really just the shortcut of .*
# / - this is really just the shortcut of ./

puts('hello '.+ 'world')
puts ((10.* 9).+ 9)
puts ''

# 6.1 Fancy String Methods
var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A magic spell?'
puts var1.reverse # => pots
puts var2.reverse # => stressed diaper reviled
puts var3.reverse # => ?lleps cigam A PUSH B SELLECT....
puts var1 # => stop
puts var2 # => deliver repaid desserts
puts var3 # ....TCELES B HSUP A magic spell?
puts ''

# puts 'What is your full name?' # => What is your full name?
# name = gets.chomp # => Expects input
# puts 'Did you know ther are ' + name.length + ' characters' # => Error
# puts 'in your name, ' + name + '?'
# puts ''

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'
puts ''

puts 'What is your first name?'
f_name = gets.chomp
puts 'What is your middle name?'
m_name = gets.chomp
puts 'What is your last name?'
l_name = gets.chomp
puts 'Did you know there are ' + (f_name.length + m_name.length + l_name.length).to_s
puts 'letters in your name, ' + f_name + ' ' + m_name + ' ' + l_name + '?'
puts ''

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters
puts ''

line_width = 50
puts('Old Mother Hubbard'.center(line_width))
puts('Sat in her cupboard'.center(line_width))
puts('Eating her curds and whey,'.center(line_width))
puts('When along came a spider'.center(line_width))
puts('Who sat down beside her'.center(line_width))
puts('And scared her poor shoe dog away'.center(line_width))
puts ''

line_width = 40
str = '--> text <--'
puts(str.ljust(line_width))
puts(str.center(line_width))
puts(str.rjust(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))
puts ''

# 6.2 A Few Things to Try
puts 'WHAT DO YOU WANT?!'
input = gets.chomp
puts 'WHADDYA MEAN "' + input.upcase + '"?!? YOU\'RE FIRED!!'
puts ''

line_width = 50
left_col = 12
right_col = 10
center_col = 38
puts('Table of Contents'.center(line_width))
puts('Chapter 1:'.ljust(left_col) + 'Getting Started'.ljust(center_col) + 'page  1'.rjust(right_col))
puts('Chapter 2:'.ljust(left_col) + 'Numbers'.ljust(center_col) + 'page  9'.rjust(right_col))
puts('Chapter 3:'.ljust(left_col) + 'Letters'.ljust(center_col) + 'page  13'.rjust(right_col))
puts ''

# 6.4 More Arithmetic
puts 5**2 # => 25
puts 5**0.5 # => 2.23606...
puts 7/3 # => 2
puts 7%3 # => 1
puts 365%7 # => 1
puts ''

puts (5-2).abs # => 3
puts (2-5).abs # => 3
puts ''

#6.5 Random Numbers
puts rand # => random float >= 0 and < 1
puts rand # => ``
puts rand # => ``
puts (rand(100)) # => random int >= 0 and < 100
puts (rand(100)) # => ``
puts (rand(100)) # => ``
puts (rand(1)) # => 0 because randome int >= 0 and < 1
puts (rand(1)) # ``
puts (rand(1)) # ``
puts (rand(99999999999999999999999999999999999999)) # => random int >= 0
puts('The weatherman said there is a')
puts(rand(101).to_s + '% chance of rain,')
puts('but you can never trust a weatherman.')

# Using srand allows you to set a seed for the following rands
# This will make the rands always produce the same random numbers
srand 1976
puts(rand(100)) # => 50
puts(rand(100)) # => 21
puts(rand(100)) # => 80
puts(rand(100)) # => 15
puts ''
srand 1976
puts(rand(100)) # => 50
puts(rand(100)) # => 21
puts(rand(100)) # => 80
puts(rand(100)) # => 15
puts ''

# 6.6
puts(Math::PI) # =>  3.1415...
puts(Math::E) # => 2.71828...
puts(Math.cos(Math::PI/3)) # => 0.500000...1
puts(Math.tan(Math::PI/4)) # => 0.99999....
puts(Math.log(Math::E**2)) # => 2.0
puts((1 + Math.sqrt(5))/2) # => 1.6180...
