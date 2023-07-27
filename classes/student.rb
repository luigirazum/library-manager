require_relative 'person'

class Student < Person
  attr_reader :classroom

  # a 'Student' <belongs-to> a 'Classroom'
  # is set with @classroom = classroom
  # Make sure that when setting the Classroom for a Student
  # it also adds it to the Classrooms' Students
  # is set with @classroom.students.push(self) unless @classroom.students.include?(self)
  def initialize(age, name, parent_permission)
    super(age, name, parent_permission: parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
