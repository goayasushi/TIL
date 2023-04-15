input = gets.split(' ').map(&:to_i)
shops = input[0]
month = input[1]

input = gets.split(' ').map(&:to_i)
initial_cost = input[0]
running_cost = input[1]
profit = input[2]

sales = []
shops.times do
  sales << gets.to_i 
end

deficit = 0
sales.each do |sale|
  cost = initial_cost + running_cost * month
  total_profit = profit * sale
  if total_profit < cost
    deficit += 1
  end
end

puts deficit