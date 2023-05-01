num = gets.to_i
odd = [*"A".."Z"].rotate(-num)
even = [*"A".."Z"].rotate(num)
ciphers = gets.to_s.chars
n = 0
str = ""

ciphers.each do |cipher|
  if n % 2 != 0
    str << cipher.tr("A-Z", odd)
  else
    str <<  cipher.tr("A-Z", even)
  end
end

puts str



cipher.each_char.with_index{|alpa, index|
  if index % 2 != 0
    alpa_new = alpa.tr("A-Z", odd)
    puts alpa_new
    str.push(alpa_new) 
  else
    puts alpa
    alpa_new =  alpa.tr("A-Z", even)
    str.push(alpa_new) 
  end
}

puts str