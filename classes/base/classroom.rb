class Classroom
  attr_accessor :label, :students

  # a 'Classroom' <has-many> 'Student's
  # is set with @students = []
  def initialize(label)
    @label = label
    @students = []
  end

  # adding a student to a classroom
  # is set with @students.push(student)
  # and make sure it also sets the classroom
  # for that student
  # is set with student.classroom = self
  def add_student(student)
    @students.push(student)
    student.classroom = self
  end

  def to_s
    @label.ljust(10)
  end
end
