class Classroom
  attr_accessor :label
  
  # a 'Classroom' <has-many> 'Student's
  # is set with @students = []
  def initialize(label)
    @label = label
    @students = []
  end
end
