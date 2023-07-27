require_relative 'classes/person'
require_relative 'classes/student'
require_relative 'classes/teacher'
require_relative 'classes/capitalize_decorator'
require_relative 'classes/trimmer_decorator'
require_relative 'classes/classroom'
require_relative 'classes/book'
require_relative 'classes/rental'

puts '# create a person'
puts '# person = Person.new(13, \'John\', parent_permission: false)'
puts '# the following is the \'person\' created'
person = Person.new(13, 'John', parent_permission: false)
p person

puts "\n"
puts '# create a classroom \'1-B\''
puts '# classroom_1b = Classroom.new(\'1-B\')'
classroom_1b = Classroom.new('1-B')
puts "classroom_1b: #{classroom_1b.label}"
puts "classroom_1b students: #{classroom_1b.students}"

puts "\n"
puts '# create a student'
puts '# student = Student.new(10, \'Kimberly\', false, classroom_1b)'
puts '# the following is the \'student\' created'
student = Student.new(10, 'Kimberly', false, classroom_1b)
p student
puts '# output for calling \'play_hooky\' method'
puts student.play_hooky
puts "classroom_1b: #{classroom_1b.label}"
puts "classroom_1b students: #{classroom_1b.students}"

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

puts "\n"
puts '##########################################'
puts '---- See the \'Association\'s in action ----'

puts '---- create a classroom ---'
chemistry = Classroom.new('chemistry')
puts "classroom: #{chemistry.label}"
puts "classroom students: #{chemistry.students}"

puts "\n"
puts '---- create a student ---'
student = Student.new(22, 'maximilianus', false, chemistry)
puts "student: #{student.name}"
puts "student classroom: #{student.classroom.label}"
puts "student rentals: #{student.rentals}"

puts "\n"
puts '---- chemistry classroom changed ---'
puts "classroom: #{chemistry.label}"
puts "classroom students: #{chemistry.students}"

puts "\n"
puts '---- create book1 ---'
book1 = Book.new('chemistry for nubbies', 'ruth green')
puts "book1: #{book1.title}"
puts "book1 rentals: #{book1.rentals}"

puts "\n"
puts '---- create book2 ---'
book2 = Book.new('chemistry advanced', 'john fitzgerald')
puts "book2: #{book2.title}"
puts "book2 rentals: #{book2.rentals}"

puts "\n"
puts '---- create a teacher ---'
teacher = Teacher.new(22, 'mr. smith', 'chemistry')
puts "teacher: #{teacher.name}"
puts "teacher specialization: #{teacher.specialization}"
puts "teacher rentals: #{teacher.rentals}"

puts "\n"
puts '---- teacher rents book1 ---'
puts "teacher.add_rental('05/25/2023', book1)"
teacher.add_rental('05/25/2023', book1)

puts "\n"
puts '---- teacher changes ---'
puts "teacher: #{teacher.name}"
puts "teacher specialization: #{teacher.specialization}"
puts "teacher rentals: #{teacher.rentals}"

puts "\n"
puts '---- book1 changes ---'
puts "book1: #{book1.title}"
puts "book1 rentals: #{book1.rentals}"

puts "\n"
puts '---- book2 is rented by student ---'
puts "book2.add_rental('05/25/2023', student)"
book2.add_rental('05/25/2023', student)

puts "\n"
puts '---- student changes ---'
puts "student: #{student.name}"
puts "student classroom: #{student.classroom.label}"
puts "student rentals: #{student.rentals}"

puts "\n"
puts '---- book2 changes ---'
puts "book2: #{book2.title}"
puts "book2 rentals: #{book2.rentals}"
