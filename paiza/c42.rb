participant = gets.to_i
games = participant * (participant - 1) / 2

results = []
games.times do 
  results << gets.split(' ').map(&:to_i)
end

table = {}

participant.times do |n|
  n += 1
  table[n] = Array.new(participant,"-")
end

results.each do |result|
  w = result[0]
  l = result[1]
  table[w][l - 1] = "W"
  table[l][w - 1] = "L"
end

table.each do |key, value|
  puts value.join(' ')
end