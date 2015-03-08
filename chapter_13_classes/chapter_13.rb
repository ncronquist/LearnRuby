# Chapter 13 Code Exercises

# 13.0 Changing existing classes
class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty-two'
    end

    english
  end
end

puts 5.to_eng
puts 42.to_eng
puts

# 13.1 A Few Things to Try
# See integer_factorial.rb and integer_to_roman.rb
# I ignored the shuffle method, because Ruby 2.0 has shuffle built in

# 13.2 Creating Classes
class Die
  def roll
    1 + rand(6)
  end
end

# Let's make a couple of dice...
dice = [Die.new, Die.new]

# ...and roll them.
dice.each do |die|
    puts die.roll
end
puts

# 13.3 Instance Variables
class Die
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

die = Die.new
die.roll
puts die.showing
puts die.showing
die.roll
puts die.showing
puts die.showing
puts

# Initially, our dice will not be rolled
puts Die.new.showing # => nil

# To fix this, we can set up an initialize method
# initialize is automatically called when an object is created
class Die
  def initialize
    # For now, we'll just roll the die, but we could do something else
    # We could set the die to start always have 1 showing
    roll
  end
  def cheat(value)
    if value >= 1 && value <= 6
      @number_showing = value
    end
  end
  def roll
    @number_showing = 1 + rand(6)
  end
  def showing
    @number_showing
  end
end

puts Die.new.showing # => (a random number between 1 and 6)
die = Die.new
die.cheat(4)
puts die.showing
puts

# 13.4 new vs initialize
# You use *new* to create a new object, and *initialize* is called automatically
# *new* is a method of the class, while *initialize* is a method of the instance
# You call *new* to initialize a class. You never call *initialize*.
# You can technically call *initialize* and define *new*, but it's either very advanced or stupid

# 13.5 Baby Dragon
# See baby_dragon.rb
# Private vs Public
# Private methods are methods accessible only within that class
#   ex. Car private methods - speed, direction position
# Public methods are something you can do TO the class
#   ex. Car public methods - gas_pedal_position, brake_position, steering_wheel_position

# 13.6 A few more things to try
# See Orange Tree
