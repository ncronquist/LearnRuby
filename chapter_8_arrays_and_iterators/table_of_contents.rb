#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that displays the following table of 90's Hip-Hop hits:
#
#   $ ruby exercise2.rb
#   Can I Kick It?      A Tribe Called Quest      1991
#   Rump Shaker         Wreckx-n-Effect           1992
#   Check Yo Self       Ice Cube                  1993
#   Regulate            Warren G & Nate Dogg      1994
#   I Got 5 On It       Luniz                     1995
#   Ready Or Not        The Fugees                1996
#
# TIP #1: Hold all of the information -- song, artist, and year -- in an array.
#
# TIP #2: Use the `string.ljust` method from class 2 exercise 7.
#
# TIP #3: The width of each line is 50 characters.

line_width = 50
left_col = 20
right_col = 6
center_col = line_width - left_col - right_col

hits = [['Can I Kick It?', 'A Tribe Called Quest', '1991'],
        ['Rump Shaker', 'Wreckx-n-Effect', '1992'],
        ['Check Yo Self', 'Ice Cube', '1993'],
        ['Regulate', 'Warren G & Nate Dogg', '1994'],
        ['I Got 5 On It', 'Luniz', '1995'],
        ['Ready Or Not', 'The Fugees', '1996']]

hits.each do |row|
  i = 0
  row.each do |col|
    if i == 0
      print "#{col.ljust(left_col)}"
      i += 1
    elsif i == 1
      print "#{col.ljust(center_col)}"
      i += 1
    else
      print "#{col.rjust(right_col)}"
    end
  end
  puts ''
end
