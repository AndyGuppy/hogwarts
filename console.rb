require_relative('./models/student.rb')
require_relative('./models/house.rb')
require('pry')


puts Student.all()
student1 = Student.new({'first_name' => 'Lorna','second_name' => 'booth','house_id' => 4,'age' => 13})
student1.save
puts "after adding"
puts Student.all()
puts
puts House.all()
house1 = House.new({'name' => 'Rumblebum','logo' => 'www.goaway.com'})
house1.save
puts "after adding"
puts House.all()
puts
puts House.find('2').name
puts 
puts "find house for student"
puts student1.find_house_logo().logo



