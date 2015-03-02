# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.

# Methods
def bottle_string(n)
  if n > 1
    return n.to_s + ' bottles of beer'
  elsif n == 1
    return n.to_s + ' bottle of beer'
  elsif n == 0
    return 'no more bottles of beer'
  else
    return 'ERROR! Can\'t have negative bottles of beer!'
  end
end

# Begin Program
count_start = 3
count = count_start
wall = 'on the wall'

loop do
  puts "#{bottle_string(count).capitalize} #{wall}, #{bottle_string(count)}!"

  count -= 1
  break if count == -1

  puts "Take one down, pass it around, #{bottle_string(count)} #{wall}!"
end

# If we're out of beer get some more
puts "Go to the store and buy some more, #{bottle_string(count_start)} #{wall}!"
