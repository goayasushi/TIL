n = gets.to_i
nums = []
n.times do 
  nums << gets.to_i
end

nums = nums.reverse
a = 0

nums.each do |num|
  a = Rational(1,num + a)
end

ansewer = Rational(1,a)

puts "#{ansewer.numerator} #{ansewer.denominator}"
