input = gets.split(' ').map(&:to_i)
days = input[0]
buy_price = input[1]
sell_price = input[2]

stock_prices = []

days.times do 
  stock_price = gets.to_i
  stock_prices << stock_price
end

stocks = 0
profit = 0
repetition = stock_prices.length - 1

repetition.times do |n|
  stock_price = stock_prices[n]
  if stock_price <= buy_price
    stocks = stocks + 1
    profit = profit - stock_price
  elsif stock_price >= sell_price
    profit = profit + stock_price * stocks
    stocks = 0
  end
end

profit = profit + stock_prices[repetition] * stocks
puts profit