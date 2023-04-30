num = gets.to_i
scores = gets.split(' ').map(&:to_i)

ranks = scores.map{ |score_rank| scores.count{ |score| score_rank < score } + 1 }

ranks.each do |rank|
  if rank == 1
    puts "G"
  elsif rank == 2
    puts "S"
  elsif rank == 3
    puts "B"
  else 
    puts "N"
  end
end