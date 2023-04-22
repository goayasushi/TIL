# 1回目
card = gets.split(' ').map(&:to_s)
a = card[0]
b = card[1]
c = card[2]
d = card[3]

card_sum = []
card_sum << (a + b).to_i + (c + d).to_i
card_sum << (a+b).to_i + (d+c).to_i
card_sum << (a+c).to_i + (b+d).to_i
card_sum << (a+c).to_i + (d+b).to_i
card_sum << (a+d).to_i + (b+c).to_i
card_sum << (a+d).to_i + (c+b).to_i
card_sum << (b+a).to_i + (c+d).to_i
card_sum << (b+a).to_i + (d+c).to_i
card_sum << (c+a).to_i + (b+d).to_i
card_sum << (c+a).to_i + (d+b).to_i
card_sum << (d+a).to_i + (b+c).to_i
card_sum << (d+a).to_i + (c+d).to_i

puts card_sum.max 

# 2回目
card = gets.split(' ').map(&:to_s)

card_combs = card.permutation.to_a

card_sum = []
card_combs.each do |combs|
  first = combs[0] + combs[1]
  second = combs[2] + combs[3]
  sum = first.to_i + second.to_i
  card_sum << sum
end

puts card_sum.max 