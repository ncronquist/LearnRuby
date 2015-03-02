# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!

bye_count = 0

puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'

loop do
  input = gets.chomp
  if input == 'BYE'
    bye_count += 1
    if bye_count == 3
      puts 'Nana: BYE SWEETIE!'
      break
    else
      puts 'Nana: HOW\'S SCHOOL GOING?'
    end
  elsif input == input.upcase
    bye_count = 0
    puts "Nana: NOT SINCE #{rand(21) + 1930}!"
  else
    bye_count = 0
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
  end
end
