input = gets.split(' ').map(&:to_i)
stu_num = input[0]
red = input[1]

scores = []

stu_num.times do 
  scores << gets.split(' ').map(&:to_i)
end

en = []
ja = []
ma = []

scores.each do |score|
  en << score[0]
  ja << score[1]
  ma << score[2]
end

en_ranks = en.map { |v| en.count { |a| a < v } + 1 }
en_red = []
en_ranks.each do |en_rank|
  if en_rank <= red
    en_red << "red"
  else
    en_red << "clear"
  end
end

ja_ranks = ja.map { |v| ja.count { |a| a < v } + 1 }
ja_red = []
ja_ranks.each do |ja_rank|
  if ja_rank <= red
    ja_red << "red"
  else
    ja_red << "clear"
  end
end

ma_ranks = ma.map { |v| ma.count { |a| a < v } + 1 }
ma_red = []
ma_ranks.each do |ma_rank|
  if ma_rank <= red
    ma_red << "red"
  else
    ma_red << "clear"
  end
end

red_scores = []

stu_num.times do |n|
  red_score = []
  red_score << en_red[n]
  red_score << ja_red[n]
  red_score << ma_red[n]
  red_scores << red_score
end

red_scores.each do |red_score|
  puts red_score.count("red")
end