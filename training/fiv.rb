def fiv(n)
    if n == 0
      return 0
    elsif n == 1 || n == 2
      return 1
    elsif
      a = 0
      b = 1
      n.times do
        c = a
        a = b
        b = c + b
      end
      return a 
    end
end

puts "何番目のフィボナッチ数を知る？"
input = gets.to_i
puts "#{input}番目のフィボナッチ数は#{fiv(input)}"