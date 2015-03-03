# Chapter 8 Code Exercises

# 8.0 Arrays

names = ['Ada', 'Belle', 'Chris']

puts names # => Ada\n Belle\n Chris\n
puts # => ''
puts names[0] # => Ada
puts names[1] # => Belle
puts names[2] # => Chris
puts names[3] # => ''

other_peeps = []
other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'
puts other_peeps # => beebee Ah-ha\n Seedee\n \n beebeeMeaner\n

# 8.1 The Method Each

languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'
puts
# .each is an iterator

# Here's another iterator
3.times do
  puts 'Hip-Hip-Hooray!'
end
puts

2.times do
  puts '...you can say that again...'
end

# 8.2 More Array Methods

foods = ['artichoke', 'brioche', 'caramel']

puts foods # => artichoke\n brioche\n caramel\n
puts
puts foods.to_s # => ["artichoke", "brioche", "caramel"]
puts
puts foods.join(', ') # => artichoke, brioche, caramel
puts
puts foods.join(' :) ') + ' 8)' # => artichoke :) brioche :) caramel 8)

200.times do
 puts []
end # => Does nothing because the array is empty so there is nothing to puts
puts

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0] # => raindrops on roses
puts favorites.last # => whiskey on kittens
puts favorites.length # => 2

puts favorites.pop # => whiskey on kittens
puts favorites # => raindrops on roses
puts favorites.length # => 1

