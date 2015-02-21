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
