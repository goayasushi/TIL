input = gets.split(' ').map(&:to_i)
carrot_sum = input[0]
standard_min = input[1] - input[2]
standard_max = input[1] + input[2]

carrots = []
index = 0

carrot_sum.times do
  carrot = gets.split(' ').map(&:to_i)
  carrot << index
  carrots << carrot
  index += 1
  carrot = []
end


carrots_select = []

carrots.each do |n|
  suger = n[1]
  if suger >= standard_min && suger <= standard_max
    carrots_select << n
  end
end

carrot_num = nil

if carrots_select == []
  puts "not found"
else
  weight = 0
  carrots_select.each do |n|
    if weight < n[0]
      carrot_num = n[2]
    end
  end
  puts carrot_num
end
