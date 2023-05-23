num = gets.to_i

ids = gets.split(' ').map(&:to_i)
ids = ids.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

max_v = ids.values.max
selects = ids.select{|k,v| v == max_v}

puts selects.keys.sort.join(' ')