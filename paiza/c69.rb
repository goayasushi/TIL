input = gets.split(' ').map(&:to_i)
current_year = input[0]
current_month = input[1]
current_day = input[2]

input = gets.split(' ').map(&:to_i)
festival_month = input[0]
festival_day = input[1]

year_days = 7 * 13 + 6 * 15

# 祭りの年の算出
festival_year = current_year + 1
until festival_year % 4 == 1 do
  festival_year += 1 
end



# 現在年の日数算出
if (current_month - 1) % 2 == 0
  current_month_days = (current_month - 1)/2*13 + (current_month - 1)/2*15
else
  current_month_days = ((current_month - 1)/2 + 1)*13 + (current_month - 1)/2*15
end
current_year_days = current_month_days + current_day

# 現在から開催までの年数
years = 0
until festival_year - current_year == 1 do
  years += 1
end

# 開催年の日数算出
if (festival_month - 1) % 2 == 0
  festival_month_days = festival_month/2*13 + festival_month/2*15
else
  festival_month_days = (festival_month/2 + 1)*13 + festival_month/2*15
end
festival_year_days = festival_month_days + festival_day

days = (year_days - current_year_days) + years * year_days + festival_year_days
puts days