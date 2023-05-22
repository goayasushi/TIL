input = gets.split(' ').map(&:to_i)
item_num = input[0]
user_num = input[1]
rank = input[2] - 1

item_scores = gets.split(' ').map(&:to_f)

holding_nums = []

user_num.times do 
  holding_nums << gets.split(' ').map(&:to_f)
end

n = 0
sum = 0
scores = []

holding_nums.each do |holding_num|
  item_scores.each do |item_score|
    sum += item_score * holding_num[n]
    n += 1
  end
  sum = sum.round
  scores << sum
  n = 0
  sum = 0
end

puts scores.sort.reverse[0..rank]