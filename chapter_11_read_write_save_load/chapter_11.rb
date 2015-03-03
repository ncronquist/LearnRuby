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

name = 'Luke'
zip = 90201

puts "Name = #{name}, Zipcode = #{zip}" # => Name = Luke, Zipode = 90210
puts
puts "#{2 * 10**4 + 1} Leagues Under the Sea, THE REVENGE!" # => 20001 Leagues Under the Sea, THE REVENGE!
puts

# 11.6 Regularly Shceduled Programming
require 'yaml'
# First we define these fancy methods...
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename

  YAML::load yaml_string
end

# ...and now we use these fnacy methods.
test_array = ['Slick Shoes',
              'Bully Blinders',
              'Pinchers of Peril']

filename = 'DatasGadgets.txt'

# We save it...
yaml_save test_array, filename

# We load it...
read_array = yaml_load filename

# We weep for the po' fools that ain't got it...
puts (read_array == test_array)

# # This section is all commented because it wouldn't actually work on my computer
# # 11.7 Renaming Your Photos
# Dir['*.jpg'] # => Searches for all jpg files in the diretory from which you run the program

# # Move to correct directory
# Dir.chdir 'C:/Documents and Settings/Katy/PictureInbox'

# # First we find all of the pictures to be moved
# pic_names = Dir['F:/**/*.jpg']

# puts 'What would you like to call this batch?'
# batch_name = gets.chomp

# puts
# print "Downloading #{pic_names.length} files: "

# # This will be our counter. We'll start at 1 today,
# # though normally I like to count from 0.
# pic_number = 1

# pic_names.each do |name|
#   print '.' # This is our "progress bar".

#   new_name = if pic_number < 10
#     "#{batch_name}0#{pic_number}.jpg"
#   else
#     "#{batch_name}#{pic_number}.jpg"
#   end
#   # This renames teh picutures, but since "name"
#   # has a big long path on it, and "new_name"
#   # doesn't, it also moves the file to the
#   # current working direcotry, which is now
#   # Katy's PictureInbox folder.
#   # Since it's a *move*, this effectively
#   # downloads and deletes the originals.
#   # And since this is a memory card, not a
#   # hard drive, each of these takes a second
#   # or so; hence, the little dots let her
#   # know that my program didn't hose her machine.
#   # (Some marriage advice from your favorite
#   # author/pgorammer: it's all about the
#   # little things.)

#   File.rename name, new_name
#   # Finally we increment the counter
#   pic_number += 1
# end

# puts # This is so we aren't on progress bar line.
# puts 'Done, cutie!'
