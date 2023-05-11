def elapsed_day(month,day)
  elapsed_months = month - 1
  if elapsed_months % 2 == 0
    current_month_days = elapsed_months / 2 * 13 + elapsed_months / 2 * 15
  else
    current_month_days = (elapsed_months / 2 + 1) * 13 + elapsed_months / 2 * 15
  end
  return current_month_days + day
end

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

# 現在年の経過日数算出
current_year_days = elapsed_day(current_month,current_day)

# 現在から開催までの年数
years = festival_year - current_year - 1

# 開催年の日数算出
festival_year_days = elapsed_day(festival_month,festival_day)

days = (year_days - current_year_days) + years * year_days + festival_year_days
puts days