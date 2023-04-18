day_num = gets.to_i
days = []

day_num.times do 
  day = gets.split(' ').map(&:to_i)
  days << day
end

day_hours = []
days.each do |day|
  first_hour = day[0]
  second_hour = day[1]
  third_hour = 24 - day[2]
  day_hour = first_hour + second_hour + third_hour
  day_hours << day_hour
end

puts day_hours.min
puts day_hours.max
