class Integer
  def factorial
    fac = 1
    # i = self

    # for i in i...2
    #   fac = fac * (i - 1)
    # end
    (1..self).each do |i|
      fac = fac * i
    end
    fac
  end
end

puts 5*4*3*2*1
puts 5.factorial
puts
