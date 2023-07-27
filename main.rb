require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'classes/teacher'
require_relative 'classes/capitalize_decorator'
require_relative 'classes/trimmer_decorator'

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

puts "\n"
puts '##########################################'
puts '---- See the \'Decorator\'s in action ----'

puts '---- person --- test'
person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name

puts "\n"
puts '---- person2 --- test'
person2 = Person.new(20, 'jane lee')
puts person2.correct_name
capitalized_person2 = CapitalizeDecorator.new(person2)
puts capitalized_person2.correct_name
capitalized_trimmed_person2 = TrimmerDecorator.new(capitalized_person2)
puts capitalized_trimmed_person2.correct_name

puts "\n"
puts '---- person3 --- test'
person3 = Person.new(75, 'arnold schwarzenegger')
puts person3.correct_name
capitalized_person3 = CapitalizeDecorator.new(person3)
puts capitalized_person3.correct_name
capitalized_trimmed_person3 = TrimmerDecorator.new(capitalized_person3)
puts capitalized_trimmed_person3.correct_name
