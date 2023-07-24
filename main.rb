require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'classes/teacher'

puts '# create a person'
puts '# person = Person.new(13, \'John\', parent_permission: false)'
puts '# the following is the \'person\' created'
person = Person.new(13, 'John', parent_permission: false)
p person

puts "\n"
puts '# create a student'
puts '# student = Student.new(10, \'Kimberly\', false, \'1-A\')'
puts '# the following is the \'student\' created'
student = Student.new(10, 'Kimberly', false, '1-A')
p student
puts '# output for calling \'play_hooky\' method'
puts student.play_hooky

puts "\n"
puts '# create a teacher'
puts '# teacher = Teacher.new(30, \'Charles\', \'Chemistry\')'
puts '# the following is the \'teacher\' created'
teacher = Teacher.new(30, 'Charles', 'Chemistry')
p teacher
puts '# output for calling \'use_services?\' method'
puts teacher.use_services?
