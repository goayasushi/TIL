input = gets.split(' ').map(&:to_i)
purchase = input[0].to_f
fresh_per = input[1].to_f
processing_per = input[2].to_f
fresh = purchase * fresh_per / 100
processing = (purchase - fresh) * processing_per / 100

remainder = purchase - fresh - processing
puts remainder
