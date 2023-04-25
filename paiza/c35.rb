examinee = gets.to_i

results = []

examinee.times do 
  result = []
  result = gets.split(' ')
  results << result
end

pass_num = 0

results.each do |result|
  selection = result[0]
  total = result[1].to_i + result[2].to_i+ result[3].to_i + result[4].to_i + result[5].to_i
  if selection == "l"
    selection_total = result[4].to_i + result[5].to_i
    if total >= 350 && selection_total >= 160
      pass_num += 1
    end
  else selection == "s"
    selection_total = result[2].to_i+ result[3].to_i
    if total >= 350 && selection_total >= 160
      pass_num += 1
    end
  end
end

puts pass_num