# Chapter 11 Code Exercises

# 11.1 Doing Something
# ruby 99bottles.rb > lyrics.txt # => This will save the output of your 99 bottles program to lyrics.txt

# 11.2 The thing about computers...
# Make sure to back up your stuff!

# 11.3 Saving and Loading for Grown-Ups

# The filename doesn't have to end
# with ".txt", but since it is valid
# text, why not?
filename = 'ListerQuote.txt'
test_string = 'I promise that I swear absolutely that ' +
              'I will never mention gazpacho soup again.'

# The 'w' here is for write-access to the file,
# since we are trying to write to it.
File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename
puts(read_string == test_string) # => true
puts

# 11.4 YAML
require 'yaml' # => Imports YAML into your program

test_array = ['Give Quiche A Chance',
              'Mutants Out!',
              'Chameleonic Life-Forms, No Thanks']

# Here's hal of the magic:
test_string = test_array.to_yaml
# You see? Kind of like "to_s", and it is in fact a string,
# but it's a YAML description of "test_array".

filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

# And the other half of the magic:
read_array = YAML::load read_string

puts(read_string == test_string) # => true
puts(read_array == test_array) # => true

# 11.5 Diversion: Double-Quoted Strings

buffy_quote_1 = '\'Kiss rocks\'?
                 Why would anyone want to kiss...
                 Oh, wait. I get it.'

buffy_quote_2 = "'Kiss rocks '?\n" +
                "Why would anyone want to kiss...\n" +
                "Oh, wait. I get it."
puts buffy_quote_1
puts
puts(buffy_quote_1 == buffy_quote_2)
# Using double quotes, we can indent the strings so they all line up. You'll
# notice the "\n", which is the escape sequence for the newline character. With
# this you can also put a multiline string on one line of code:
puts "3...\n2...\n1...\nHAPPY NEW YEAR!"

# But it doesn't work with the simpler single-quoted strings:
puts '3...\n2...\n1...\nHAPPY NEW YEAR!'

# You must escape double quotes in double-quoted strings, but not single quotes
puts 'single (\') and double (") quotes'
puts "single (') and double (\") quotes"

