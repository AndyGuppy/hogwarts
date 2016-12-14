require_relative('./models/student.rb')
require('pry')


puts Student.all()
student1 = Student.new({'first_name' => 'Lorna','second_name' => 'booth','house' => 'Ravenclaw','age' => 13})
student1.save
puts "after adding"
puts Student.all()
puts
puts Student.find('2').first_name
