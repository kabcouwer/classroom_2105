class Classroom
  attr_reader :subject,
              :capacity,
              :students,
              :add_student,
              :yell_at_students,
              :over_capacity,
              :kick_out

  def initialize(subject, capacity)
    @subject = subject
    @capacity = capacity
    @students = []
    @yell_at_students = []
  end

  def add_student(student)
    @students << student
  end

  def yell_at_students
    students.each do |name|
      @yell_at_students << name.upcase
    end
    return @yell_at_students
  end

  def over_capacity
    if students.count <= capacity
      return false
    else
      return true
    end
  end

  def kick_out

end
