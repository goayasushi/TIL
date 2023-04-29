input = gets.split(' ').map(&:to_i)

standard = input[0]
num = input[1]
weights = []
num.times do 
  weights << gets.to_i
end
box = 0
weights.each do |weight|
  quotient = weight / standard
  quotient_next  = quotient + 1
  difference = (weight - quotient * standard).abs
  difference_next = (weight - quotient_next * standard).abs
  if quotient == 0
    box = standard * 1
    puts box
  else 
    if difference < difference_next
      box = standard * quotient
      puts box
    else
      box = standard * quotient_next
      puts box
    end
  end
end