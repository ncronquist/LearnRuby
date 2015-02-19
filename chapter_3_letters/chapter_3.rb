# Chapter 3 code bits

# Basic strings
puts 'Hello, world!' # => Hello, world!
puts '' # => ""
puts 'Good-buy.' # => Good-buy.

# 3.1 String arithmetic

  # Adding strings
  puts 'I like' + 'apple pie.' # => I likeapple pie.
  puts 'I like ' + 'apple pie.' # => I like apple pie.
  puts 'I like' + ' apple pie.' # => I like apple pie.

  # Multiplying strings
  puts 'blink ' * 4 # => blink blink blink blink

# 3.2 12 vs '12'
puts 12 + 12 # => 24
puts '12' + '12' # => 1212
puts '12 + 12' # => 12 + 12
puts 2 * 5 # => 10
puts '2' * 5 # => 22222
puts '2 * 5' # => 2 * 5

# 3.3 Problems

  # Arithmetic errors
  # puts '12' + 12 # => Error can't add number to string
  # puts '2' * '5' # => Error can't multiply string by string

  # String errors
  # puts 'You're swell!' # => Error need to escape the single apostrophe
  puts 'You\'re swell!' # => You're swell!
  puts "You're swell!" # => You're swell!

  #Escape Character
  puts 'You\'re swell!' # => You're swell!
  puts 'backslash at the end of a string: \\' # => backslash at the end of a string: \
  puts 'up\\down' # => up\down
  puts 'up\down' # => up\down
