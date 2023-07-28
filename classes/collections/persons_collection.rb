require_relative 'collection'
require_relative '../base/teacher'
require_relative '../base/student'
require_relative '../base/classroom'
require_relative '../ui/input'
require_relative '../ui/screen'

class PersonsCollection < Collection
  def initialize(collection = [])
    super(collection)
  end

  def get_name(person)
    name = Input.new
    name.get("#{person} name")
  end

  def get_age(person)
    age = Input.new
    age.get("#{person} age")
  end

  def add_a_teacher
    input = Input.new
    name = get_name('Teacher')
    age = get_age('Teacher')
    specialization = input.get('Specialization')
    puts "\n"
    teacher = Teacher.new(age, name, specialization)
    @collection << teacher
    puts '-' * 74
    sleep 0.5
    puts "The [Teacher] '#{name}' was succefully created ✅"
    sleep 1
  end

  def create_a_teacher
    puts "#{'-' * 25} < Create a [Teacher] > #{'-' * 25}\n"
    add_a_teacher
  end

  def add_a_student
    input = Input.new
    name = get_name('Student')
    age = get_age('Student')
    permission = input.get('Parents permission (y/n)')
    parents_permision = permission.downcase == 'y'
    puts "\n"
    student = Student.new(age, name, parents_permision)
    @collection << student
    puts '-' * 74
    sleep 0.5
    puts "The [Student] '#{name}' was succefully created ✅"
    sleep 1
  end

  def create_a_student
    puts "#{'-' * 25} < Create a [Student] > #{'-' * 25}\n"
    add_a_student
  end

  def add_item(action)
    screen = Screen.new
    screen.clear
    send(action)
    sleep 2
  end

  def list_all
    return if empty?

    puts "\n"
    header = []
    header << 'Type'.rjust(10)
    header << 'id'.ljust(6)
    header << 'Name'.ljust(20)
    header << 'Age'.ljust(3)
    header << 'Permit?'.ljust(8)
    header << 'Class/Spec'.ljust(15)
    puts header.join(' | ')
    puts '-' * 78
    super
  end

  def select_person(id)
    @collection.select { |p| p.id == id }
  end

  def list_rentals_by_person_id(id)
    puts "\n"
    person = select_person(id).first

    if person.nil?
      puts "✋ The [Person] with id='#{id}' does not exist."
      return
    end

    unless person.rentals?
      puts "✋ The [Person] with id='#{id}', has no [Rental]s"
      return
    end

    puts person.list_rentals
    sleep 3
  end
end
