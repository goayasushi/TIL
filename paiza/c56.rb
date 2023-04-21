input = gets.split(' ').map(&:to_i)
num_stu = input[0]
pass_score = input[1]

student = []
students = []

num_stu.times do |n|
  n += 1  
  student = gets.split(' ').map(&:to_i)
  student << n
  students << student
end

grades = 0

students.each do |student|
  grades = student[0] - (student[1] * 5)
  if grades < 0
    grades = 0
  end
  
  if grades >= pass_score
    puts student[2]
  end
end