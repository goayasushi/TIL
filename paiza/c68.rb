num = gets.to_i
odd = [*"A".."Z"].rotate(-num).join
even = [*"A".."Z"].rotate(num).join
input = gets.to_s

str = ""

input.each_char.with_index(1){|alpa, index|
  if index % 2 != 0
    str << alpa.tr("A-Z", odd)
  else
    str << alpa.tr("A-Z", even)
  end
}

puts str