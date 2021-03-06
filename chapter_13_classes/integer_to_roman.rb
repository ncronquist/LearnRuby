class Integer
  def to_roman
    roman = ''
    num = self

    map = { 1000 => 'M',
            900 => 'CM',
            500 => 'D',
            400 => 'CD',
            100 => 'C',
            90 => 'XC',
            50 => 'L',
            40 => 'XL',
            10 => 'X',
            9 => 'IX',
            5 => 'V',
            4 => 'IV',
            1 => 'I'
          }

    i = 0
    map.each do |a, r|
      result = num / a
      result.times do
        roman += r
      end
      num = num % a
      i += 1
    end

    roman
  end
end

puts 4.to_roman
puts 99.to_roman
puts 999.to_roman
