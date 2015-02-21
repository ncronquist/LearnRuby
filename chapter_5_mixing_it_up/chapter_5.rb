# Chapter 5 Code Exercises

# 5.1 Conversions
var1 = 2
var2 = '5'
puts var1.to_s + var2 # => 25

var1 = 2
var2 = '5'
puts var1.to_s + var2 # => 25
puts var1 + var2.to_i # => 7

puts '15'.to_f # => 15.0
puts '99.999'.to_f # => 99.999
puts '99.999'.to_i # => 99
puts '' # =>
puts '5 is my favorite number!'.to_i # => 5
puts 'Who asked you about 5 or whatever?'.to_i # => 0
puts 'Your momma did.'.to_f # => 0.0
puts '' # =>
puts 'stringy'.to_s # => stringy
puts 3.to_i # => 3
puts ''

# 5.2 Puts
# Puts means Put String, so it is always pushing out a string
puts 20 # => 20
puts 20.to_s # => 20
puts '20' # => 20
puts ''

# 5.3 gets
puts gets # => Requests input and then outputs it to STDOUT
puts ''

# 5.5 chomp
puts 'Hello there, and what\'s your name?' # => Hello there, and what's your name?
name = gets # => expects input (Nick)
puts 'Your name is ' + name + '? What a lovely name!' # => Your name is Nick\n? What a lovely name!
puts 'Pleased to meet you, ' + name + '. :)' # => Pleased to meet you, Nick\n. :)

puts 'Hello there, and what\'s your name?' # => Hello there, and what's your name?
name = gets.chomp # => expects input (Nick)
puts 'Your name is ' + name + '? What a lovely name!' # => Your name is Nick? What a lovely name!
puts 'Pleased to meet you, ' + name + '. :)' # => Pleased to meet you, Nick. :)
puts ''

# 5.6 A few things to try
puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp
puts 'And what\'s your middle name?'
middle_name = gets.chomp
puts 'And what\'s your last name?'
last_name = gets.chomp
puts "Nice to meet you #{first_name} #{middle_name} #{last_name}."

puts 'Enter your favorite number:'
favorite_number = gets.chomp
better_number = favorite_number.to_i + 1
puts "I guess #{favorite_number} is alright, but don't you think #{better_number} is better?"
puts ''

# 5.7 Mind your variables
my_birth_month = 'August'
my_birth_day = 3
puts my_birth_month + my_birth_day # => Error can't convert number to string
